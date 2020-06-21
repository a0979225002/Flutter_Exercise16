import 'package:flutter/material.dart';
import 'package:flutterbuttom/page/home_page.dart';
import 'package:flutterbuttom/page/category_page.dart';
import 'package:flutterbuttom/page/setting_page.dart';
import 'package:flutterbuttom/page/search_page.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({Key key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int countNum = 0;

  List itemPage = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
    SearchPage(),
  ];

  List appBars = [
    "首頁",
    "商品類別",
    "各是組件演示",
    "搜尋-表單組件",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBars[this.countNum]),
      ),
      floatingActionButton: Container(
        height: 80,
        width: 80,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(150)),
        child: FloatingActionButton(
          backgroundColor: countNum ==1 ||countNum ==2? Colors.green: Colors.grey,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, "/button03");
            print("FloatingActionButton 點擊事件");
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //浮動按鈕位置,中間圓形按鈕更改位置
      body: itemPage[this.countNum],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        currentIndex: this.countNum,
        onTap: (int index) {
          setState(() {
            this.countNum = index;
            print(index);
          });
        },
        type: BottomNavigationBarType.fixed,
        //超過三個按鈕需加入這行
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首頁"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("類別"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("設定"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("搜尋"),
          ),
        ],
      ),
    );
  }
}
