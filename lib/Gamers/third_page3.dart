import 'package:flutter/material.dart';
import '../Global_Variabls/All_Var.dart';

class third_Page extends StatefulWidget {
  const third_Page({super.key});

  @override
  State<third_Page> createState() => _third_PageState();
}

class _third_PageState extends State<third_Page> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown,
        body: Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/images/bgg.jpg'))),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              children: [
                SizedBox(height: height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('Player  x',
                            style: TextStyle(
                                color: Color(0xffFEC808),
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        SizedBox(
                          height: height * 0.009,
                        ),
                        Container(
                          height: height * 0.1 + 20,
                          width: width * 0.3 - 10,
                          decoration: BoxDecoration(
                              color: Colors.yellow.shade50,
                              border: Border.all(
                                  color: Color(0xffEBCA6C), width: 4),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.yellow,
                                  blurRadius: 5,
                                  spreadRadius: 0.5,
                                )
                              ]),
                          child: Image.asset('assets/boy.jpeg'),
                        ),
                        SizedBox(
                          height: height * 0.009 + 5,
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xffFEC808),
                          radius: 12,
                          child: Text(
                            playerx.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        )
                      ],
                    ),
                    Icon(
                      Icons.all_inclusive,
                      color: Color(0xffFEC808),
                      size: 30,
                    ),
                    Column(
                      children: [
                        Text('Player  y',
                            style: TextStyle(
                                color: Color(0xffFEC808),
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        SizedBox(
                          height: height * 0.009,
                        ),
                        Container(
                          height: height * 0.1 + 20,
                          width: width * 0.3 - 10,
                          decoration: BoxDecoration(
                              color: Colors.yellow.shade50,
                              border: Border.all(
                                  color: Color(0xffEBCA6C), width: 4),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.yellow,
                                  blurRadius: 5,
                                  spreadRadius: 0.5,
                                )
                              ]),
                          child: Image.asset(
                            'assets/girl.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: height * 0.009 + 5,
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xffFEC808),
                          radius: 12,
                          child: Text(
                            playery.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height * 0.05),
                Expanded(
                  flex: 6,
                  child: GridView.builder(
                      itemCount: 9,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            _click(index);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: height * 0.1 - 40,
                              width: width * 0.2 - 40,
                              decoration: BoxDecoration(
                                  color: Index.contains(index)
                                      ? Colors.red.shade100
                                      : Colors.yellow,
                                  border: Border.all(
                                      color: Color(0xffFEC808), width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.orange,
                                      offset: Offset(3, 0),
                                      blurRadius: 10,
                                      spreadRadius: 3,
                                    )
                                  ]),
                              alignment: Alignment.center,
                              child: Text(
                                showOX[index],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(results,
                      style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ),

                // SizedBox(
                //   height: height*0.009,
                // ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              _clear();
                            });
                          },
                          child: Image.asset(
                            'assets/play2.png',
                            height: 60,
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _click(int index) {
    setState(() {
      if (runO && showOX[index] == "") {
        showOX[index] = "O";
        box++;
      } else if (!runO && showOX[index] == '') {
        showOX[index] = 'X';
        box++;
      }

      runO = !runO;
      _checkWinner();
    });
  }

  void _checkWinner() {
    if (showOX[0] == showOX[1] && showOX[0] == showOX[2] && showOX[0] != '') {
      setState(() {
        results = 'Player ' + showOX[0] + ' Wins!';
        Index.addAll([0, 1, 2]);
        _updateScrore(showOX[0]);
      });
    }

    if (showOX[3] == showOX[4] && showOX[3] == showOX[5] && showOX[3] != '') {
      setState(() {
        results = 'Player ' + showOX[3] + ' Wins!';
        Index.addAll([3, 4, 5]);
        _updateScrore(showOX[3]);
      });
    }

    if (showOX[6] == showOX[7] && showOX[6] == showOX[8] && showOX[6] != '') {
      setState(() {
        results = 'Player ' + showOX[6] + ' Wins!';
        Index.addAll([6, 7, 8]);
        _updateScrore(showOX[6]);
      });
    }

    if (showOX[0] == showOX[3] && showOX[0] == showOX[6] && showOX[0] != '') {
      setState(() {
        results = 'Player ' + showOX[0] + ' Wins!';
        Index.addAll([0, 3, 6]);
        _updateScrore(showOX[0]);
      });
    }

    if (showOX[1] == showOX[4] && showOX[1] == showOX[7] && showOX[1] != '') {
      setState(() {
        results = 'Player ' + showOX[1] + ' Wins!';
        Index.addAll([1, 4, 7]);
        _updateScrore(showOX[1]);
      });
    }

    if (showOX[2] == showOX[5] && showOX[2] == showOX[8] && showOX[2] != '') {
      setState(() {
        results = 'Player ' + showOX[2] + ' Wins!';
        Index.addAll([2, 5, 8]);
        _updateScrore(showOX[2]);
      });
    }

    if (showOX[0] == showOX[4] && showOX[0] == showOX[8] && showOX[0] != '') {
      setState(() {
        results = 'Player ' + showOX[0] + ' Wins!';
        Index.addAll([0, 4, 8]);
        _updateScrore(showOX[0]);
      });
    }

    if (showOX[6] == showOX[4] && showOX[6] == showOX[2] && showOX[6] != '') {
      setState(() {
        results = 'Player ' + showOX[6] + ' Wins!';
        Index.addAll([6, 4, 2]);
        _updateScrore(showOX[6]);
      });
    } else if (win && box == 9) {
      setState(() {
        results = "Nobody wins!";
      });
    }
  }

  void _updateScrore(String winner) {
    if (winner == 'O') {
      playerx++;
    } else if (winner == 'X') {
      playery++;
    }
    win = true;
  }

  void _clear() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        showOX[i] = '';
      }
      results = '';
      Index = [];
    });
    box = 0;
  }
}
