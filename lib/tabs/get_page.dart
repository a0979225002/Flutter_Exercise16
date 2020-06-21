import 'dart:convert';

import 'package:flutter/material.dart';

class GetPage extends StatefulWidget {
  GetPage({Key key}) : super(key: key);

  @override
  _GetPageState createState() => _GetPageState();
}

class _GetPageState extends State<GetPage> {

  //演示如何將網路中的json轉成Map 數據來使用
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Map userInfo = {
      "username":"張三",
      "age":20,
    };

    String jsonMap = json.encode(userInfo);//把map轉成Json string 類型

    print(json.encode(userInfo));

    Map u =  json.decode(jsonMap);//將String 類型的json檔轉成map類型

    print(u["username"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("get請求演示"),
      ),
    );
  }
}