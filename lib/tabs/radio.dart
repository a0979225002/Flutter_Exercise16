import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  RadioPage({Key key}) : super(key: key);

  @override
  _RadioState createState() => _RadioState();
}

class _RadioState extends State<RadioPage> {

  String sex = "";
  String address = "";
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("男:"),
                Radio(
                  value: "key01",//類似android key的作用,選中哪個會監聽顯示哪個
                  onChanged: (value){
                    setState(() {
                      //監聽客戶選擇哪顆按鈕 value出來的值為,您自訂的value值
                      this.sex = value;
                      print(value);
                    });
                  },
                  groupValue: this.sex,//綁定自定義value,一定得寫
                ),
                Text("女:"),
                Radio(
                  value: "key02",//類似android key的作用,選中哪個會監聽顯示哪個
                  onChanged: (value){
                    setState(() {
                      this.sex = value;
                      print(value);
                    });
                  },
                  groupValue: this.sex,
                ),
              ],
            ),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("打印出:${this.sex}"),
                    SizedBox(height: 30,),
                    Text("三目運算打印出:${this.sex=="key01"?"男":"女"}"),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  width: 200,
                  color: Colors.yellow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RadioListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        selected: this.address == "key03",
                        value: "key03",
                        onChanged: (value){
                          setState(() {
                            this.address = value;
                          });
                        },
                        groupValue: this.address,
                        title: Text("標題"),
                        subtitle: Text("輔助標題"),
                        secondary: Icon(Icons.beach_access),

                      ),
                      RadioListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        selected: this.address == "key04",
                        value: "key04",
                        onChanged: (value){
                          setState(() {
                            this.address = value;
                          });
                        },
                        groupValue: this.address,
                        title: Text("標題"),
                        subtitle: Text("輔助標題"),
                        secondary: Icon(Icons.beach_access),
                      ),
                      SizedBox(height: 20,),
                      Switch(
                        value: this.flag,

                        onChanged: (value){
                          setState(() {
                            this.flag = value;
                          });
                        },

                      )
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}