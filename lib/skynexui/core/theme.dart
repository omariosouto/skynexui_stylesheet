import 'package:skynexui_stylesheet/skynexui/core/breakpoints.dart';
import 'package:skynexui_stylesheet/skynexui/core/theme_colors.dart';
import 'package:skynexui_stylesheet/skynexui/index.dart';

class Theme {
  final ThemeColors colors;
  final Map<Breakpoints, double> breakpoints;

  Theme({
    this.colors = ThemeColors.primary050,
    this.breakpoints = defaultBreakpoints,
  });
}
