import 'package:design_app/screens/basic_design.dart';
import 'package:design_app/screens/home_screen.dart';
import 'package:design_app/screens/main_navigator_screen.dart';
import 'package:design_app/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      title: 'Material App',
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'main_navigator',
      routes: {
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_screen': (_) => const ScrollScreen(),
        'home_screen': (_) => const HomeScreen(),
        'main_navigator': (_) => const MainNavigatorScreen(),
      },
    );
  }
}
