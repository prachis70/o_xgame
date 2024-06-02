import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class play_screen extends StatefulWidget {
  const play_screen({super.key});

  @override
  State<play_screen> createState() => _play_screenState();
}

class _play_screenState extends State<play_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body:Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(30),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/style.jpg'),
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(30),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/style2.jpeg'),
                        )
                    ),
                  ),
                ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 110),
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(color: Colors.white70,blurRadius: 4,spreadRadius: 4)
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img2.jpg'),
                    )
                ),
              ),
            ),
          ),
         // SizedBox(height: 30,)
    Padding(
      padding: const EdgeInsets.only(top: 60),
      child: GestureDetector(onTap: () {
        Navigator.of(context).pushNamed('/th');
      },
        child: Container(
        height: 90,
        width: 180,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
        BoxShadow(color: Colors.white70,blurRadius: 4,spreadRadius: 4)
        ],
        image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/play2.png'),
        )
        ),
        ),
      ),
    ),
    ],
      ),
    );
  }
}
