import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key key}) : super(key: key);

  @override
  _FromDemoPageState createState() => _FromDemoPageState();
}

class _FromDemoPageState extends State<FormDemoPage> {
  String _userName;
  String _info;
  int _sex;
  List hobby = [{
    "checked":false,
    "title":"吃飯",
  },
    {
      "checked":false,
      "title":"睡覺",
    },
    {
      "checked":false,
      "title":"寫程式",
    },
  ];

  List<Widget>_gethobby(){
    List<Widget> tempList = [];
    for(int i=0; i<hobby.length;i++){
      tempList.addAll([
        Text(this.hobby[i]["title"]+":"),
        Checkbox(
          value: this.hobby[i]["checked"],
          onChanged: (value){
            setState(() {
              this.hobby[i]["checked"] = value;
            });
          },
        )
      ]);
    }
    return tempList;
  }

  void _setChanged(value) {
    setState(() {
      this._sex = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("問卷調查表"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: "請輸入名稱",
                    labelText: "姓名",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    this._userName = value;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "性別:",
                      style: TextStyle(fontSize: 18),
                    ),
                    Container(
                      width: 130,
                      child: RadioListTile(
                        title: Text(
                          "男生",
                          style: TextStyle(fontSize: 18),
                        ),
                        value: 1,
                        onChanged: this._setChanged, //不加() = 把值賦予給onChanged:
                        groupValue: this._sex,
                      ),
                    ),
                    Container(
                      width: 150,
                      child: RadioListTile(
                        title: Text(
                          "女生",
                          style: TextStyle(fontSize: 18),
                        ),
                        value: 2,
                        onChanged: this._setChanged,
                        groupValue: this._sex,
                      ),
                    ),
                  ],
                ),
                Divider(),
                //愛好
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: _gethobby(),
                ),
                SizedBox(height: 20,),
                Divider(),
                TextField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    labelText: "備註",
                    hintText: "請輸入備註",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value){
                    this._info = value;
                  },
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: OutlineButton(
                    child: Text(
                      "提交訊息",
                      style: TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.w300),
                    ),
                    onPressed: () {
                      print("性別:${_sex}");
                      print("姓名:${_userName}");
                      print("興趣:${this.hobby}");
                      print("備註:${this._info}");
                    },
                    textColor: Colors.yellow,
                    splashColor: Colors.yellow,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
