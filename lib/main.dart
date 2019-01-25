import 'package:faster_ui/faster_ui_one.dart';
import 'package:faster_ui/faster_ui_two.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Faster UI",
      debugShowCheckedModeBanner: false,
      home: Screens(),
    );
  }
}

class Screens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100]..withOpacity(0.2),
      appBar: AppBar(title: Text("Simple Screens"),
        centerTitle: true,
        backgroundColor: Colors.purple.withOpacity(0.5),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => FasterUiOne())),
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 160,
                    width: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "http://cdn-images-1.medium.com/max/800/0*VvX4LKpawhwd5AI5.jpg"),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: <Widget>[
                              Spacer(),
                              Text("Open Screen Dish",
                                  style: TextStyle(
                                      letterSpacing: 1.1,
                                      color: Colors.yellowAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 14),
          InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => FasterUiTwo())),
            child: Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 160,
                    width: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://assets.adidas.pe/image/upload/f_auto,q_auto,fl_lossy/esPE/Images/originals-ss19-nite-jogger-hp-tc-v1-d_tcm202-303479.jpg"),
                            fit: BoxFit.cover)),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: <Widget>[
                              Spacer(),
                              Text("Open Store",
                                  style: TextStyle(
                                      letterSpacing: 1.1,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
