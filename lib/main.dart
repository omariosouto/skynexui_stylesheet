import 'package:skynexui_stylesheet/skynexui/docs/home.dart';
import 'package:skynexui_stylesheet/skynexui/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DocHome(title: 'SkynexUI - Home'),
    );
  }
}
