import 'package:flutter/material.dart';
import 'package:flutterbuttom/routes/Routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //配置中文語言
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh','CH'),
        const Locale('en','US'),
      ],
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/tabs',
      onGenerateRoute:onGenerateRoute ,
    );
  }
}
