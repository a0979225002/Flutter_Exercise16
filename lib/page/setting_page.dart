import 'package:flutter/material.dart';
import 'package:flutterbuttom/dialog/MyDialog.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Theme.of(context).primaryColor,
                textTheme: ButtonTextTheme.primary,
                child: Text("跳轉到各組件"),
                onPressed: (){
                  Navigator.pushNamed(context, "/RadioPage");
                },
              )
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Theme.of(context).primaryColor,
                textTheme: ButtonTextTheme.primary,
                child: Text("簡易Demo,客戶問卷調查表"),
                onPressed: (){
                  Navigator.pushNamed(context, "/fromPage");
                },
              ),
            ],
          ),
          SizedBox(height: 20,),
          RaisedButton(
            color: Theme.of(context).primaryColor,
            textTheme: ButtonTextTheme.primary,
            child: Text("自定義dialog"),
            onPressed: (){
              showDialog(
                  context:context,
                  builder: (context){
                    return MyDialog("我是自定義Dialog","內容:Dialog 三秒後會自動關閉",20);
                  }
              );
            },
          )
        ],
      ),
    );
  }
}
