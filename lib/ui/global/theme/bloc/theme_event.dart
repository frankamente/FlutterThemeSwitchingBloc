import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:theme_switching_bloc/ui/global/theme/app_themes.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class ThemeChange extends ThemeEvent {
  final AppTheme appTheme;
  const ThemeChange({@required this.appTheme});

  @override
  List<Object> get props => [appTheme];
}
