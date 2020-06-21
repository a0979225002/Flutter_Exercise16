import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("按鈕Demo頁面"),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      color: Theme.of(context).primaryColor,
                      textTheme: ButtonTextTheme.primary,
                      elevation: 50,
                      //陰影效果
                      child: Text("普通按鈕"),
                      onPressed: () {
                        print("普通按鈕");
                      },
                    ),
                    SizedBox(width: 50,),
                    RaisedButton.icon(
                        color: Theme.of(context).primaryColor,
                        textTheme: ButtonTextTheme.primary,
                        onPressed: (){

                        },
                        icon: Icon(Icons.settings),
                        label: Text("圖標按鈕")
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("更改按鈕寬度"),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    child: RaisedButton(
                      child: Text("圓形按鈕02作法"),
                      color: Colors.blue,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(150),
                      ),
                      onPressed: (){
                      },
                    ),
                  )
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 100,
                    child: RaisedButton(
                      child: Text("圓形按鈕03作法"),
                      color: Colors.blue,
                      textColor: Colors.white,
                      splashColor: Colors.yellow,//長案能更換水波紋顏色
                      shape: CircleBorder(
                        side: BorderSide(
                          color: Colors.blue
                        )
                      ),
                      onPressed: (){
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
