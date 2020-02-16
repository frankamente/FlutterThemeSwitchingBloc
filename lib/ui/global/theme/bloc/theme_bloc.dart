import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:theme_switching_bloc/ui/global/theme/app_themes.dart';
import 'package:theme_switching_bloc/ui/global/theme/bloc/bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  @override
  ThemeState get initialState =>
      ThemeState(themeData: appThemeDate[AppTheme.GreenLight]);

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    if (event is ThemeChange) {
      yield ThemeState(themeData: appThemeDate[event.appTheme]);
    }
  }
}
