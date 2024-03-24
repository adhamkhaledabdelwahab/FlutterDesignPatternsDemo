import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/src/home_screen.dart';
import 'package:flutter_design_patterns/src/mvc/view/mvc_counter_screen.dart';
import 'package:flutter_design_patterns/src/mvi/view/mvi_counter_screen.dart';
import 'package:flutter_design_patterns/src/mvp/view/mvp_counter_screen.dart';
import 'package:flutter_design_patterns/src/mvvm/view/mvvm_counter_screen.dart';

class AppRouter {
  static const String rHome = "/";
  static const String rMVC = "/mvc";
  static const String rMVP = "/mvp";
  static const String rMVVM = "/mvvm";
  static const String rMVI = "/mvi";

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final name = settings.name;
    return switch(name){
      rHome => _goto(const HomeScreen()),
      rMVC => _goto(const MvcCounterScreen()),
      rMVP => _goto(const MvpCounterScreen()),
      rMVVM => _goto(const MvvmCounterScreen()),
      rMVI => _goto(const MviCounterScreen()),
      (_) => null,
    };
  }

  static _goto(Widget page) => MaterialPageRoute(builder: (_) => page);
}