import 'package:flutter/material.dart';
import 'package:flutterbuttom/tabs/tabs_page.dart';
import 'package:flutterbuttom/tabs/button_page.dart';
import 'package:flutterbuttom/tabs/button_page02.dart';
import 'package:flutterbuttom/tabs/button_page03.dart';
import 'package:flutterbuttom/tabs/radio.dart';
import 'package:flutterbuttom/tabs/form_demo_page.dart';
import 'package:flutterbuttom/tabs/datepicker_page.dart';
import 'package:flutterbuttom/tabs/flutter_date_picker.dart';
import 'package:flutterbuttom/tabs/get_page.dart';


final routes = {
  '/tabs': (context) => TabsPage(),
  '/button': (context) => ButtonPage(),
  '/button02':(context)=>ButtonPage02(),
  '/button03':(context)=>ButtonPage03(),
  '/RadioPage':(context)=>RadioPage(),
  '/fromPage':(context)=>FormDemoPage(),
  '/datePicker':(context)=>DatepickerPage(),
  '/flutterDatePicker':(context)=>FlutterDatePickerPage(),
  '/getPage':(context)=>GetPage(),
};

//固定寫法,多個傳參,好維護
// ignore: missing_return, top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  //命名傳值
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      print(route);
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      print(route);
      return route;
    }
  }
};
