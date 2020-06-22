import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetPage extends StatefulWidget {
  GetPage({Key key}) : super(key: key);

  @override
  _GetPageState createState() => _GetPageState();
}

class _GetPageState extends State<GetPage> {
  String _json = '';
  String _text = '';

  //演示如何將網路中的json轉成Map 數據來使用
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    Map userInfo = {
//      "username":"張三",
//      "age":20,
//    };
//
//    String jsonMap = json.encode(userInfo);//把map轉成Json string 類型
//
//    print(json.encode(userInfo));
//
//    Map u =  json.decode(jsonMap);//將String 類型的json檔轉成map類型
//
//    print(u["username"]);
//  }
//請求數據

  List _list = [];

  _getData() async {
    var openData =
        "https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvTravelFood.aspx";

    var result = await http.get(openData);

    if (result.statusCode == 200) {
      setState(() {
//        this._json = jsonOpenData[0]["Address"];
        print("有成功媽:${result.body}");
        this._list = json.decode(result.body);
      });
    } else {
      print(result.statusCode);
    }
  }

  String _count = '';

  //提交數據
  _postData() async {
    var url = "http://192.168.0.181:8815/FoodSharing_war/Sql_Signup_Servlet";

    var result = await http.post(url, body: {
      "account": "FlutterPost",
      "password": "a0979225002",
      "phone": "0979225002",
      "createTime": "${DateTime.now()}"
    });

    if (result.statusCode == 200) {
      print(result.body);
      this._count = result.body;
    } else {
      print("${result.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("get請求"),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Card(
            child: Column(
              children: <Widget>[
                OutlineButton(
                  child: Text("get請求request給後端"),
                  onPressed: () {
                    _postData();
                    setState(() {
                      this._text = "post將註冊帳密傳回後端:反回1=已加入sql中:(${this._count})";
                    });
                  },
                ),
                Text(this._text),
                Divider(),
                OutlineButton(
                  child: Text("獲取OpenData數據"),
                  onPressed: () {
                    _getData();
                  },
                ),
                Container(
                  height: 600,
                  //使用list.map方式遍歷資料
//                    child:this._list.length>0?ListView(
//                      children: this._list.map((value){
//                          return ListTile(
//                            title: Text("${value["Name"]}"),
//                            subtitle: Text(value["FoodFeature"]),
//                          );
//                      }).toList(),
//                    ):Text("加載中....."),
                  child: this._list.length > 0
                      ? ListView.builder(
                      itemCount: _list.length,
                      itemBuilder: (context,int index){
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: <Widget>[
                              Image.network(this._list[index]["PicURL"]),
                              Card(
                                child: ListTile(
                                  title: Text(this._list[index]["Name"]),
                                  subtitle: Text(this._list[index]["HostWords"]),
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                  )
                      : Text("加載中....."),
                )
              ],
            ),
          )),
    );
  }
}
