import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/info_screen.dart';

Map<String, WidgetBuilder> obtenerRutas() {
  return {
    '/': (BuildContext context) => HomeScreen(),
    '/info': (BuildContext context) => InfoScreen(),
  };
}