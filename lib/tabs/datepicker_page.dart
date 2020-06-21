
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DatepickerPage extends StatefulWidget {
  @override
  _DatepickerPageState createState() => _DatepickerPageState();
}

class _DatepickerPageState extends State<DatepickerPage> {
//  var now = DateTime.now(); //獲得當前時間

  String _nowDate = formatDate(DateTime.now(),
      [yyyy, '-', mm, '-', dd, '/', HH, ':', nn, ':', ss]); //第三方庫



  DateTime _nowDateTime = DateTime.now();//當前日期

  var _time = TimeOfDay.now();//現在時間

//日期元件
  _showDatePicker() async {
    //第一種方法,不用加入async
//    showDatePicker(
//        context: context,
//        initialDate: _nowDateTime,//當前日期
//        firstDate: DateTime(1980),//起始日期
//        lastDate: DateTime(2025),//結束日期
//    ).then((value){//獲取值
//      setState(() {
//        this._nowDate = formatDate(value, [yyyy,'年',mm,'月',dd,'日']);
//      });
//    });

    //第二種方法異步同步
    var result = await showDatePicker(
      context: context,
      initialDate: _nowDateTime, //當前日期
      firstDate: DateTime(1980), //起始日期
      lastDate: DateTime(2025), //結束日期
    );
   setState(() {
     if (result!=null) {
       this._nowDate = formatDate(result, [yyyy,'年',mm,'月',dd,'日']);
     }
   });
  }
//時間元件
  _showDateTime() async{
    var result = await showTimePicker(
        context: context,
        initialTime: _time,
    );

    setState(() {
      if (result !=null) {
        this._time = result;
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    print(now);//2020-06-18 21:21:56.045883
//    print(now.millisecondsSinceEpoch);//變成由197X年開始到現在的數字/(1592486516045)
//    //例 2020-06-18 21:21:56.045883 = 1592486516045
//
//    print(DateTime.fromMicrosecondsSinceEpoch(1592486516045));//將數字轉成時間
//
//    print(formatDate(now, [yyyy,'-',mm,'-',dd,'/',HH,':',nn,':',ss]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "日期組件原生-現在時間:${this._nowDate}",
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CupertinoButton(
            onPressed: _showDatePicker,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("更改日期:${this._nowDate}"),
                SizedBox(width: 10),
                Icon(
                  Icons.date_range,
                  size: 30,
                  color: Colors.green,
                )
              ],
            ),
          ),
          CupertinoButton(
            onPressed: _showDateTime,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("更改時間:${this._time.format(context)}"),
                SizedBox(width: 10),
                Icon(
                  Icons.access_time,
                  size: 30,
                  color: Colors.green,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
