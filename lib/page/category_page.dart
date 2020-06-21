import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:Container(
                        child: TabBar(
                      isScrollable: true,//上方app 多個菜單,擁有左右滑動
                          //取消掉自動置中效果
                          indicatorColor: Colors.green,
                          labelColor: Colors.red,//頂部按鈕選中的顏色
                          unselectedLabelColor: Colors.grey,////頂部按鈕未選中的顏色
                          indicatorSize: TabBarIndicatorSize.label,//按鈕下方的橫條寬度,這裏(label)= 比照字體寬度
                          tabs: <Widget>[
                            Tab(text:"推薦01"),
                            Tab(text:"推薦02"),
                            Tab(text:"推薦03"),
                            Tab(text:"推薦04"),
                            Tab(text:"推薦05"),
                            Tab(text:"推薦06"),
                            Tab(text:"推薦06"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      RaisedButton(
                        color: Theme.of(context).primaryColor,
                        textTheme: ButtonTextTheme.primary,
                        child: Text("get請求"),
                        onPressed: (){
                          Navigator.pushNamed(context, '/getPage');
                        },
                      ),
                      Divider(),
                      RaisedButton(
                        color: Theme.of(context).primaryColor,
                        textTheme: ButtonTextTheme.primary,
                        child: Text("post請求"),
                        onPressed: (){

                        },
                      ),
                      Divider(),
                      RaisedButton(
                        color: Theme.of(context).primaryColor,
                        textTheme: ButtonTextTheme.primary,
                        child: Text("請求"),
                        onPressed: (){

                        },
                      ),
                    ],
                  ),
                )
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
