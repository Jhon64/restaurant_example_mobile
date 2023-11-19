import 'package:flutter/material.dart';
import 'package:restaurant_client/screens/home.dart';
import 'package:restaurant_client/screens/login.dart';

Map<String, Widget Function(BuildContext)> routers = {
  '/': (context) => const LoginScreen(),
  '/home': (context) => const HomeScreen(),
};
