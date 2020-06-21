import 'package:flutter/material.dart';

class GetTextField extends StatefulWidget {
  GetTextField({Key key}) : super(key: key);

  @override
  _GetTextFieldState createState() => _GetTextFieldState();
}

class _GetTextFieldState extends State<GetTextField> {
  var _username = new TextEditingController();//初始化須給予值的寫法
  var _password;

  bool _checkBox = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _username.text = '初始值';
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    hintText: "請輸入帳號",
                    border: OutlineInputBorder(),
                    labelText: "帳號"
                ),
                //賦予初始值
                controller: this._username,//在這只要更新文本的值,就會被賦予進去
                //發現可以不加,已經同步更新了
                onChanged: (value){// 當文本框改變時,這裏會監聽該文本框的值
                 setState(() {
                   _username.text = value;
                 });
                },
              ),
              SizedBox(height: 30,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "請輸入密碼",
                    border: OutlineInputBorder(),
                    labelText: "密碼"
                ),
                //如癸未初始化,須引入這行給予監聽
                onChanged: (value){// 當文本框改變時,這裏會監聽該文本框的值
                 setState(() {
                   _password= value;
                 });
                },
              ),
              SizedBox(height: 30,),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: this._checkBox,
                    onChanged: (value){
                      setState(() {
                        _checkBox = value;
                        print(value);
                      });
                    },
                  ),
                  Checkbox(
                    value: this._checkBox,
                    onChanged: (value){
                      setState(() {
                        _checkBox = value;
                        print(value);
                      });
                    },
                  )
                ],
              ),
                Container(
                  width: 200,
                  alignment: Alignment.topLeft,
                  child: CheckboxListTile(
                      title: Text("點擊我啊"),
                      selected: true,//跟主題同顏色
                      secondary: Icon(Icons.beach_access),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: this._checkBox,
                      onChanged: (value){
                        setState(() {
                          this._checkBox = value;
                        });
                      },
                    ),
                ),
              Divider(),

              SizedBox(height: 30,),
              Container(
                height: 50,
                width: 170,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    textTheme: ButtonTextTheme.primary,
                    child: Text("獲取TextField的值"),
                    onPressed: (){
                      print("帳號:${this._username.text}");
                      print("密碼:${this._password}");
                      print("CheckBox:${this._checkBox}");
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}