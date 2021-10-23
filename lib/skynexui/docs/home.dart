import 'package:skynexui_stylesheet/skynexui/core/stylesheet.dart';
import 'package:skynexui_stylesheet/skynexui/index.dart';

/*
- States:
  - dark mode
  - hover
  - focus
  - disabled


*/

class DocHome extends StatelessWidget {
  const DocHome({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Box(
              styleSheet: const StyleSheet(
                disabled: StyleSheet(
                  backgroundColor: {Breakpoints.xs: Colors.grey},
                ),
                darkMode: StyleSheet(
                  backgroundColor: {Breakpoints.xs: Colors.black},
                ),
                color: {
                  Breakpoints.xs: Colors.white,
                },
                backgroundColor: {
                  Breakpoints.xs: Colors.blue,
                  Breakpoints.sm: Colors.red,
                  Breakpoints.md: Colors.purple,
                  Breakpoints.lg: Colors.black,
                },
              ),
              child: Text(
                '$screenSize',
              ),
            )
          ],
        ),
      ),
    );
  }
}
