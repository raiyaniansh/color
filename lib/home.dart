import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List col=[
    Color(0xff0097A7),
    Color(0xff2A363B),
    Color(0xffE84A5F),
    Color(0xffFF847C),
    Color(0xffFEFCAB),
    Color(0xff666F80),
    Color(0xffC3C8D3),
    Color(0xffFFFFFF),
    Color(0xff26A39A),
  ];
  // List col2=[];
  int c1=0;
  int c2=1;
  int c3=2;
  int c4=4;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Color palette",style: TextStyle(fontSize: 25)),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey.shade800,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 250,
                      width: 210,
                      color: col[c1],
                    ),
                    Container(
                      height: 200,
                      width: 210,
                      color: col[c2],
                    ),
                    Container(
                      height: 100,
                      width: 210,
                      color: col[c3],
                    ),
                    Container(
                      height: 60,
                      width: 210,
                      color: col[c4],
                    ),
                  ],
                ),
                InkWell(
                  onTap: (){
                    var rnd1=Random();
                    var rnd2=Random();
                    var rnd3=Random();
                    var rnd4=Random();
                    setState(() {
                      c1=rnd1.nextInt(9);
                      c2=rnd2.nextInt(9);
                      c3=rnd3.nextInt(9);
                      c4=rnd4.nextInt(9);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(width: 150,height: 55,decoration: BoxDecoration(color: Colors.teal.withOpacity(0.50),borderRadius: BorderRadius.circular(5),border: Border.all(color: Colors.teal.shade700,width: 2)),child: Text("Generate",style: TextStyle(color: Colors.white,fontSize: 25)),alignment: Alignment.center),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
