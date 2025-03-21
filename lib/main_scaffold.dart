import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sleman_store_app/core/constants/asset_paths.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/features/cart/ui/cart_screen.dart';
import 'package:sleman_store_app/features/home/ui/home_screen.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/features/profile/ui/profile_screen.dart';

class MainScaffold extends StatefulWidget {
  @override
  _MainScaffoldState createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold>
    with AutomaticKeepAliveClientMixin {
  int _selectedIndex = 0;

  final List<Widget> _screens = [HomeScreen(), CartScreen(), ProfileScreen()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Color _getIconColor(int index) {
    return _selectedIndex == index
        ? ColorsManager.blackGray
        : ColorsManager.softGray;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: ColorsManager.charcoal,
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        unselectedFontSize: 14.sp,
        selectedFontSize: 16.sp,
        selectedItemColor: ColorsManager.blackGray, // Selected color
        unselectedItemColor: ColorsManager.softGray,
        backgroundColor: ColorsManager.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetPaths.homeIcon,
              color: _getIconColor(0),
            ),
            label: LocaleKeys.home.tr(),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetPaths.cartIcon,
              color: _getIconColor(1),
            ),
            label: LocaleKeys.cart.tr(),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetPaths.profileIcon,
              color: _getIconColor(2),
            ),
            label: LocaleKeys.profile.tr(),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
