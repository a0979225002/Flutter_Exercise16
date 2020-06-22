import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioHttp extends StatefulWidget {
  @override
  _DioHttpState createState() => _DioHttpState();
}

class _DioHttpState extends State<DioHttp> {
  Dio dio = new Dio();
  Response response;

  List list = [];

  _getData() async {
    var url =
        "https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvTravelFood.aspx";
    response = await dio.get(url);
    setState(() {
      list = response.data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dio Http請求演示"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                OutlineButton(
                  child: Text("Dio方式獲取數據"),
                  onPressed: () {
                    _getData();
                  },
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 700,
                  child: list.length > 0
                      ? ListView.builder(
                          itemCount: list.length,
                          itemBuilder: (context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 200,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.network(
                                            "${list[index]["PicURL"]}",fit: BoxFit.cover,),
                                      )),
                                  SizedBox(height: 10,),
                                  Card(
                                    child: ListTile(
                                      title: Text("${list[index]["Name"]}"),
                                      subtitle:
                                          Text("${list[index]["HostWords"]}"),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          })
                      : Text("加載中....."),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
