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
  bool _showFirst = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // child: OutlinedButton.icon(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.star,
        //     color: Colors.blue,
        //   ),
        //   label: Text('收藏'),
        //   style: ButtonStyle(
        //     side: MaterialStateProperty.all(BorderSide(color: Colors.blue)),
        //     shape: MaterialStateProperty.all(StadiumBorder()),
        //   ),
        // ),
        /// ButtonStyle详解
        child: OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.star,
            color: Colors.blue,
          ),
          label: Text('收藏'),
          // style: ButtonStyle(
          //   backgroundColor:
          //       MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          //     if (states.contains(MaterialState.disabled)) {
          //       return Colors.grey;
          //     }
          //     if (states.contains(MaterialState.pressed)) {
          //       return Colors.red;
          //     }
          //     return Colors.white;
          //   }),
          //   shape: MaterialStateProperty.all(StadiumBorder()),
          //   side: MaterialStateProperty.all(
          //       BorderSide(color: Colors.blue, width: 2.0)),
          // ),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.blue, width: 2.0),
            shape: StadiumBorder(),
            // shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(100)),
          ),
        ),
      ),
    );
  }
}
