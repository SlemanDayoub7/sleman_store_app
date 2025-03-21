import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sleman_store_app/store_app_event.dart';
import 'package:sleman_store_app/store_app_state.dart';

class StoreAppBloc extends Bloc<StoreAppEvent, StoreAppState> {
  StoreAppBloc(Locale locale) : super(StoreAppState(locale: locale)) {}
}
