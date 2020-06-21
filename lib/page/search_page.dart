import 'package:flutter/material.dart';
import 'package:flutterbuttom/GetTextField/get_text_field.dart';

class SearchPage extends StatelessWidget {

  var username = new TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
//      child: TextDemo(),//表單練習
        child: GetTextField(),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class TextDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              TextField(),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  hintText: "請輸入搜索內容",
                  border: OutlineInputBorder()//Text 增加外框
                ),
              ),
              SizedBox(height: 10,),
              TextField(
//            maxLength: 5,//最多只能輸入五個字
                maxLines: 4,//一開始寬度就給四行的寬度
                decoration: InputDecoration(
                    hintText: "請輸入搜索內容",
                    border: OutlineInputBorder()//Text 增加外框
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: "請輸入帳號",
                    border: OutlineInputBorder(),//Text 增加外框
                    labelText: "帳號"
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                obscureText: true,// 變成密碼框
                decoration: InputDecoration(
                    hintText: "請輸入密碼",
                    border: OutlineInputBorder(),//Text 增加外框
                    labelText: "密碼"
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                obscureText: true,// 變成密碼框
                decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  hintText: "請輸入用戶名",
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ],
      );
  }

}
