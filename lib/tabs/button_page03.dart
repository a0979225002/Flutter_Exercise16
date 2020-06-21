import 'package:flutter/material.dart';

class ButtonPage03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("floatingActionButton"),
      ),
      floatingActionButton: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 30,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(150),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.yellow,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 50,
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, "/tabs");
                  },
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
