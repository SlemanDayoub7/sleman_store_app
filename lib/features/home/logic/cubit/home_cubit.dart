import 'package:bloc/bloc.dart';
import 'package:sleman_store_app/core/networking/api_error_handler.dart';
import 'package:sleman_store_app/features/home/data/models/product.dart';
import 'package:sleman_store_app/features/home/data/repos/home_repo.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState.initial()) {
    initialize();
  }
  String selectedCategory = '*';
  String sortOrder = 'none';
  double? minPrice;
  double? maxPrice;
  String searchQuery = '';

  List<Product>? allProducts = [];
  List<Product>? filterdProducts = [];
  List<String>? categories = [];
  Future<void> initialize() async {
    emit(const HomeState.loading());

    try {
      await Future.wait([
        getProducts(),
        getCategories(),
      ]);
    } catch (e) {
      emit(HomeState.error(ErrorHandler.handle(e)));
    }
  }

  Future<void> getProducts() async {
    final response = await _homeRepo.getProducts();

    response.when(
      success: (products) {
        allProducts = products;
        filterdProducts?.addAll(products);
        emit(HomeState.productsSuccess(products));
      },
      failure: (errorHandler) {
        emit(HomeState.productsError(errorHandler));
      },
    );
  }

  Future<void> refreshData() async {
    emit(HomeState.loading());
    try {
      await Future.wait([
        getProducts(),
        getCategories(),
      ]);
    } catch (e) {
      emit(HomeState.error(ErrorHandler.handle(e)));
    }
  }

  Future<void> getCategories() async {
    final response = await _homeRepo.getCategories();
    response.when(
      success: (responsedCategories) {
        categories = responsedCategories;

        emit(HomeState.categoriesSuccess(categories!
          ..insert(
            0,
            '*',
          )));
      },
      failure: (errorHandler) {
        emit(HomeState.categoriesError(errorHandler));
      },
    );
  }

  getProductsByCategory(String category) {
    filterdProducts = allProducts
        ?.where((product) => product.category == category || category == '*')
        .toList();

    emit(HomeState.productsSuccess(filterdProducts!));
  }

  // Filter methods
  void applyFilters() {
    if (allProducts == null) return;

    List<Product> tempList = List.from(allProducts!);

    // Category filter
    if (selectedCategory != '*') {
      tempList = tempList.where((p) => p.category == selectedCategory).toList();
    }

    // Price range filter
    if (minPrice != null)
      tempList = tempList.where((p) => p.price >= minPrice!).toList();
    if (maxPrice != null)
      tempList = tempList.where((p) => p.price <= maxPrice!).toList();

    // Search query
    if (searchQuery.isNotEmpty) {
      final query = searchQuery.toLowerCase();
      tempList = tempList
          .where((p) =>
              p.title.toLowerCase().contains(query) ||
              p.description.toLowerCase().contains(query))
          .toList();
    }

    // Sorting
    if (sortOrder == 'lowToHigh') {
      tempList.sort((a, b) => a.price.compareTo(b.price));
    } else if (sortOrder == 'highToLow') {
      tempList.sort((a, b) => b.price.compareTo(a.price));
    }

    filterdProducts = tempList;
    if (tempList.isEmpty) {
      emit(HomeState.categoriesSuccess(categories ?? []));
      emit(HomeState.searchError());
    } else {
      emit(HomeState.productsSuccess(filterdProducts!));
    }
  }

  void setCategory(String category) {
    selectedCategory = category;
    applyFilters();
  }

  void setSortOrder(String order) {
    sortOrder = order;
    applyFilters();
  }

  void setPriceRange(double? min, double? max) {
    minPrice = min;
    maxPrice = max;
    applyFilters();
  }

  void setSearchQuery(String query) {
    searchQuery = query;
    applyFilters();
  }
}
