import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class start_page extends StatefulWidget {
  const start_page({super.key});

  @override
  State<start_page> createState() => _start_pageState();
}

class _start_pageState extends State<start_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body:  Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Container(
                height: 90,
                width: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(spreadRadius: 5,color: Colors.white,blurRadius: 3)
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                        image: AssetImage('assets/img.png'),
                    ),
                ),
              ),
            ),
          ),
          SizedBox(height: 130,),
          GestureDetector(onTap: () {
            Navigator.of(context).pushNamed('/pa');
          },
         child:  Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(color: Colors.white70,blurRadius: 4,spreadRadius: 4)
                  ],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/bg.jpg'),
                  )
              ),
            ),
          ),],
      ),
    );
  }
}
