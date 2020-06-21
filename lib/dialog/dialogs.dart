import 'package:flutter/material.dart';

class Dialog01{
  BuildContext context;
  Dialog01(this.context);
//讓用戶可以選擇要與不要版的Dialog,警示版dialog 等
  alertDialog(String title,String content,String url){
    showDialog(
        context:context,
        builder: (context){
          return AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: <Widget>[
              OutlineButton(
                child: Text("前往"),
                onPressed: (){
                  Navigator.pushNamed(context, url);
                },
              ),
              OutlineButton(
                child: Text("離開"),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ],
          );
        }
    );
  }
//ListView 版的Dialog
  simpleDialog(
      String title,
      String simpleDialogText,String url01,
      String simpleDialogText02,String url02,
      String simpleDialogText03,String url03
      ){
    showDialog(
        context: context,
        builder: (context){
          return SimpleDialog(
            title: Text(title),
            children: <Widget>[
              SimpleDialogOption(
                child: Text(simpleDialogText),
                onPressed: (){
                  Navigator.pushNamed(context, url01);
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text(simpleDialogText02),
                onPressed: (){
                  Navigator.pushNamed(context, url02);
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text(simpleDialogText03),
                onPressed: (){
                  Navigator.pushNamed(context, url03);
                },
              ),
            ],
          );
        }
    );
  }

  modelBottomSheet(
      String simpleDialogText,String url01,
      String simpleDialogText02,String url02,
      String simpleDialogText03,String url03,
      ){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(50),
            ),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(simpleDialogText),
                    onTap: (){
                      Navigator.pushNamed(context, url01);
                    },
                  ),
                  ListTile(
                    title: Text(simpleDialogText02),
                    onTap: (){
                      Navigator.pushNamed(context, url02);
                    },
                  ),
                  ListTile(
                    title: Text(simpleDialogText03),
                    onTap: (){
                      Navigator.pushNamed(context, url03);
                    },
                  ),
                ],
              ),
          );
        },

    );
  }
}

