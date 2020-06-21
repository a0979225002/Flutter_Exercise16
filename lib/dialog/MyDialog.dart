import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  String _title;
  String _content;
  double _contentFontSize;

  MyDialog(this._title, this._content, this._contentFontSize);

  _showTimer(context) {
    var timer;
    timer = Timer.periodic(
        Duration(milliseconds: 3000),//執行3秒鐘
            (timer) {
                Navigator.pop(context);
                timer.cancel();//關閉執行
            });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "${this._title}",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: CupertinoButton(
                          child: Icon(
                            Icons.close,
                            size: 30,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Container(
                      child: Text(
                        "${this._content}",
                        style: TextStyle(fontSize: _contentFontSize),
                      ),
                    ),
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
