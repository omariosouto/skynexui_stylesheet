import 'package:skynexui_stylesheet/skynexui/core/breakpoints.dart';
import 'package:skynexui_stylesheet/skynexui/index.dart';

class StyleSheet {
  // States
  final StyleSheet? darkMode;
  final StyleSheet? disabled;
  // ===============
  // Box Style
  final double? width;
  final double? height;
  final Map<Breakpoints, Color> color;
  final Map<Breakpoints, Color> backgroundColor;
  // ===============

  const StyleSheet({
    // States
    this.disabled,
    this.darkMode,
    // ===============
    // Box Style
    this.width,
    this.height,
    this.backgroundColor = const {
      Breakpoints.xs: Colors.transparent,
    },
    this.color = const {
      Breakpoints.xs: Colors.white,
    },
    // ===============
  });
}
