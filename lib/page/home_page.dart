
import 'package:flutter/material.dart';
import 'package:flutterbuttom/tabs/swiper_page.dart';
import 'package:flutterbuttom/dialog/dialogs.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Dialog01 dialog = new Dialog01(context);

    return Center(
      child: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: SwiperPage()
                ),
              ),

              RaisedButton(
                color: Theme.of(context).primaryColor,
                textTheme: ButtonTextTheme.primary,
                child: Text("跳轉到按鈕顯示頁面"),
                onPressed: (){
                    dialog.alertDialog(
                        "按鈕演示",
                        "是否要跳轉到按鈕顯示頁面",
                        '/button',
                    );
//                  Navigator.pushNamed(context, '/button');
                },
              ),
              SizedBox(height: 50,),
              RaisedButton(
                color: Theme.of(context).primaryColor,
                textTheme: ButtonTextTheme.primary,
                child: Text("跳轉到按鈕顯示頁面02"),
                onPressed: (){
                    dialog.simpleDialog("按鈕集合演示",
                        "跳轉到按鈕顯示頁面01",
                        '/button',
                        "跳轉到按鈕顯示頁面02",
                        '/button02',
                        "跳轉到按鈕顯示頁面03-floatingActionButton",
                        '/button03',
                    );
//                  Navigator.pushNamed(context, '/button02');
                },
              ),
              SizedBox(height: 50,),
              RaisedButton(
                color: Theme.of(context).primaryColor,
                textTheme: ButtonTextTheme.primary,
                child: Text("跳轉到按鈕顯示頁面03-floatingActionButton"),
                onPressed: (){

                    dialog.modelBottomSheet(
                      "跳轉到按鈕顯示頁面01", '/button',
                      "跳轉到按鈕顯示頁面02", '/button02',
                      "跳轉到按鈕顯示頁面03-floatingActionButton", '/button03',
                    );


//                  Navigator.pushNamed(context, '/button03');
                },
              ),
              SizedBox(height: 50,),
              RaisedButton(
                color: Theme.of(context).primaryColor,
                textTheme: ButtonTextTheme.primary,
                child: Text("跳轉到日期組件"),
                onPressed: (){
                  Navigator.pushNamed(context, '/datePicker');
                },
              ),
              SizedBox(height: 50,),
              RaisedButton(
                color: Theme.of(context).primaryColor,
                textTheme: ButtonTextTheme.primary,
                child: Text("跳轉到第三方日期組件flutter_cupertino_date_picker"),
                onPressed: (){
                  Navigator.pushNamed(context, '/flutterDatePicker');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
