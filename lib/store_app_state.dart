import 'dart:ui';

import 'package:equatable/equatable.dart';

class StoreAppState extends Equatable {
  const StoreAppState({
    required this.locale,
  });
  final Locale locale;

  @override
  List<Object> get props => [locale];

  StoreAppState copyWith({
    Locale? locale,
  }) {
    return StoreAppState(
      locale: locale ?? this.locale,
    );
  }
}
