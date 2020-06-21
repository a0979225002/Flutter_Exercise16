import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {

  List<Map> _images = [
    {
      "url":"https://p2.bahamut.com.tw/B/2KU/13/478adeb3bc333ee73a2cc261df18xdd5.JPG?w=1000"
    },{
      "url":"https://p2.bahamut.com.tw/B/2KU/11/dc71ed169992775102189923a618xdb5.JPG?w=1000"
    },{
      "url":"https://p2.bahamut.com.tw/B/2KU/09/85c5e41ba195b805ef8ebb056318xd95.JPG?w=1000"
    }, {
      "url": "https://p2.bahamut.com.tw/B/2KU/10/332651278027ce3f7e72c0cf5618xda5.JPG?w=1000"
    },{
      "url":"https://p2.bahamut.com.tw/B/2KU/12/d862eef7ca3dd7b858084b64fc18xdc5.JPG?w=1000"
    },{
      "url":"https://p2.bahamut.com.tw/B/2KU/14/bb359825198207d64515596dd418xde5.JPG?w=1000"
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Swiper(
            loop: true,//無限循環輪播
            duration: 500,//每張圖輪播時間
            autoplay: true,//自動開始輪播
            itemBuilder: (BuildContext context,int index){
              return ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                    "${this._images[index]['url']}",
                    fit: BoxFit.cover,
                ),
              );
            },
            itemCount: this._images.length,
            pagination: new SwiperPagination(),//
            control:  new SwiperControl(color: Colors.green),//輪播圖左右的箭頭
          ),
        ),
      ],
    );
  }
}