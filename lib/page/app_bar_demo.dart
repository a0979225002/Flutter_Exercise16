import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(//頂部案紐切換畫面,第一步
      length: 2,//第二步,需配置要點擊的按鈕

      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBarDemoPage"),
          centerTitle: true,// ios 或 android 標題都是居中顯示
          backgroundColor: Colors.green,
//        leading: IconButton(//頂部appbar增加能夠點擊的圖標
//          icon: Icon(Icons.menu),
//          onPressed: (){
//            print("menu");
//          },
//        ),
          actions: <Widget>[ //頂部appbar在後面增加能夠點擊的圖標
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                print("search");
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: (){
                print("settings");
              },
            )
          ],
          bottom: TabBar(////第三步,需配置按鈕
            tabs: <Widget>[
              Tab(text: "熱門",),
              Tab(text: "推薦",),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第一個tab"),
                ),
                ListTile(
                  title: Text("第一個tab"),
                ),
                ListTile(
                  title: Text("第一個tab"),
                ),
                ListTile(
                  title: Text("第一個tab"),
                ),
                ListTile(
                  title: Text("第一個tab"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("第二個tab"),
                ),
                ListTile(
                  title: Text("第二個tab"),
                ),
                ListTile(
                  title: Text("第二個tab"),
                ),
                ListTile(
                  title: Text("第二個tab"),
                ),
                ListTile(
                  title: Text("第二個tab"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


