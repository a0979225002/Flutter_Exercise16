import 'package:flutter/material.dart';

class ButtonPage02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("FlatButton"),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.settings),
            label: Text("設置"),
            onPressed: (){

            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: FlatButton(
                  child: Text(
                    "FlatButton",
                    style: TextStyle(
                      color: Colors.black
                    ),),
                  splashColor: Colors.yellow,
                  textColor: Colors.white10,

                  onPressed: (){

                  },
                ),
              ),
            )
          ],
        ),
          Container(
            width: 200,
            height: 100,
            child: OutlineButton(
              child: Text(
                "OutlineButton",
                style: TextStyle(
                  color: Colors.black
                ),
              ),
              textColor: Colors.yellow,
              onPressed: (){

              },
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(  // 可統一調整裡面所有的案鈕的位置,放置後會自動往右增加
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("ButtonBar"),
                    onPressed: (){
                    },
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("ButtonBar"),
                    onPressed: (){
                    },
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("ButtonBar"),
                    onPressed: (){
                    },
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("ButtonBar"),
                    onPressed: (){
                    },
                  ),
                  //自定義按鈕,class 自定義一個class 然後給予建構參數
                  MyButton(text: "自定義按鈕",height: 100,width: 100,onpressed: (){
                    print("自定義按鈕");
                  }),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
// 自定義按鈕組件

class MyButton extends StatelessWidget{
  final text;
  final onpressed;
  final double width;
  final double height;

  MyButton({this.text = '',this.onpressed = null,this.width = 80,this.height = 30});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: this.width,
      height: this.height,
      child: OutlineButton(
        child: Text(this.text),
        onPressed: this.onpressed
      ),
    );
  }

}