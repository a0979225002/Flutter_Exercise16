import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class FlutterDatePickerPage extends StatefulWidget {
  FlutterDatePickerPage({Key key}) : super(key: key);

  @override
  _FlutterDatePickerState createState() => _FlutterDatePickerState();
}

class _FlutterDatePickerState extends State<FlutterDatePickerPage> {


  DateTime _dateTime = new DateTime.now();


  _showDatePicker(){
    DatePicker.showDatePicker(
        context,
        pickerTheme: DateTimePickerTheme(
          showTitle: true,
          confirm: Text('確定'),
          cancel: Text('取消'),
      ),
        minDateTime: DateTime.parse('2018-05-12 24:03:01'),
        maxDateTime: DateTime.parse('2025-12-31 24:03:01'),
        initialDateTime: _dateTime,
//        dateFormat: "yyyy-MM-dd" ,
        dateFormat: "yyyy-MM-dd,HH時:mm分" ,//Show time 使用
        locale: DateTimePickerLocale.jp,
        pickerMode: DateTimePickerMode.time,//Show time 要加這行
        onCancel: (){
          debugPrint("監聽:客戶點擊取消");
        },

        onConfirm: (DateTime datime,List<int> index){
          setState(() {
              this._dateTime = datime;
          });
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutterDatePicker第三方日期"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.date_range),
                    SizedBox(width: 10,),
                    Text("${formatDate(_dateTime, [yyyy,'-',mm,'-',dd,'  ',HH,':',nn,':',ss])}"),
                  ],
                ),

                onPressed: _showDatePicker,
              )
            ],
          )
        ],
      ),
    );
  }
}