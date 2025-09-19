import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeManager extends HydratedCubit<ThemeMode> {
  ThemeManager() : super(ThemeMode.system);
  void changeAppTheme(ThemeMode theme) {
    emit(theme);
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    //triggered when user open app =>one call
    //if map have value the init state value is the value of map
    final index = json['theme'] as int?;

    return index != null ? ThemeMode.values[index] : null;
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    ///triggered every bloc emit any state =>many call
    return {"theme": state.index};
  }
}
