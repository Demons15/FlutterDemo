import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      color: Colors.white60,
      decoration: BoxDecoration(//设置背景图片
        image: DecorationImage(
            image: NetworkImage('https://resources.ninghao.org/images/dragon.jpg'),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
//            colorFilter: ColorFilter.mode(
//                Colors.indigoAccent[400].withOpacity(0.5),
//                BlendMode.hardLight)
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 42.0, color: Colors.white60),
//            color: Colors.blueAccent,
            padding: EdgeInsets.only(
                left: 16.0, right: 13.0, bottom: 12.0, top: 16.0),
            margin: EdgeInsets.all(16.0),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                //装饰盒子
                color: Colors.blue,
                border: Border.all(
                  //边框
                  width: 3.0,
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
//              borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  //阴影
                  BoxShadow(
                    offset: Offset(0.0, 0.0),
                    color: Colors.grey,
                    blurRadius: 20.0,
                    spreadRadius: 9.0,
                  )
                ],
                shape: BoxShape.circle,
                //形状
                gradient: LinearGradient(
                  //渐变
                  colors: [
                    Color.fromRGBO(7, 123, 255, 1.0),
                    Color.fromRGBO(3, 27, 128, 1.0)
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
          text: 'RichText....',
          style: TextStyle(
            color: Colors.indigoAccent,
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
          children: [
            TextSpan(
                text: '.com',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 17.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w100,
                )),
          ]),
    );
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 16.0);

  final String _title = '新闻版面';
  final String _type = '娱乐';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
        '《$_title》 -- $_type  在今年的2019的记者见面会上，关于华为到底会在哪款手机上搭载鸿蒙OS的问题，华为消费者业务CEO余承东表示，我们的鸿蒙OS其实已经准备好了，但准备好了并不代表就要用，因为我们还要考虑到和其他厂商的合作问题。如果我们的手机继续不被允许使用谷歌服务，我想我们会考虑使用鸿蒙OS。如果是这样的话，第一款搭载鸿蒙OS的手机产品可能是明年3月发布的华为P40。',
        textAlign: TextAlign.center,
        style: _textStyle,
        overflow: TextOverflow.ellipsis,
        maxLines: 3);
  }
}
