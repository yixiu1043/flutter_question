import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double w = 40, h = 20;

    final TextSpan textSpan = TextSpan(
      text: 'WSBT',
      style: TextStyle(fontSize: 36),
    );

    final TextPainter textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    )..layout();

    w = textPainter.width * 2;
    h = textPainter.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      /// 1. 推荐做法
      // body: Center(
      //   child: ClipRect(
      //     child: Stack(
      //       clipBehavior: Clip.none,
      //       children: [
      //         Container(
      //           width: 320,
      //           height: 320,
      //           color: Colors.grey,
      //         ),
      //         Positioned(
      //           right: 0,
      //           top: sqrt(w * w / 2 - sqrt2 * w * h + h * h),
      //           child: Transform.rotate(
      //             alignment: Alignment.bottomRight, // 旋转的基准点
      //             angle: pi / 4,
      //             child: Container(
      //               width: w,
      //               height: h,
      //               color: Colors.red.withOpacity(0.8),
      //               alignment: Alignment.center,
      //               child: Text.rich(textSpan),
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      /// 2. Banner组件，阴影不好去除
      body: Center(
        child: ClipRect(
          child: Banner(
            message: 'WSBT',
            color: Colors.red,
            location: BannerLocation.topEnd,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
