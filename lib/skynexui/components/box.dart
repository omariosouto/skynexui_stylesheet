import 'package:flutter/material.dart';
import 'package:skynexui_stylesheet/skynexui/core/breakpoints.dart';
import 'package:skynexui_stylesheet/skynexui/core/stylesheet.dart';

class Box extends StatelessWidget {
  final Widget? child;
  final List<Widget> children;
  final StyleSheet styleSheet;

  const Box({
    Key? key,
    this.styleSheet = const StyleSheet(),
    this.children = const [],
    this.child,
  }) : super(key: key);

  renderChild() {
    if (child != null) {
      return child;
    }
  }

  Widget core(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width;
    var breakpoint = getCurrentBreakpoint(screenSize);

    return DefaultTextStyle.merge(
        style: TextStyle(
          color: styleSheet.color[breakpoint],
        ),
        child: Container(
          decoration: BoxDecoration(
            color: styleSheet.backgroundColor[breakpoint],
          ),
          child: renderChild(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return core(context);
  }
}
