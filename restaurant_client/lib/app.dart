import 'package:flutter/material.dart';
import './_routers.dart';

class App extends StatelessWidget {
  final bool logged;
  const App({super.key,required this.logged});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routers,
      initialRoute: !logged ? "/" : "/home",
      theme: ThemeData(
          colorScheme: const ColorScheme.light().copyWith(
              primary: Colors.greenAccent, secondary: Colors.greenAccent)),
    );
  }
}
