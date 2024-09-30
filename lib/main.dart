import 'package:flutter/material.dart';

void main() {
  runApp(counter());
}

class counter extends StatefulWidget {
  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  int teamApoint = 0;

  int teamBpoint = 0;

  void addonepoint() {
    teamApoint = teamApoint + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Point Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamApoint',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 40)),
                      onPressed: () {
                        setState(() {
                          teamApoint++;
                        });
                      },
                      child: Text(
                        'add 1 point',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoint += 2;
                          });
                        },
                        child: Text(
                          'add 2 point',
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 40)),
                        onPressed: () {
                          setState(() {
                            teamApoint += 3;
                          });
                        },
                        child: Text(
                          'add 3 point',
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 420, // Adjust the height based on your layout
                  child: VerticalDivider(
                    color: Colors.orange,
                    thickness: 2,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'TeamB',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamBpoint',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 40)),
                      onPressed: () {
                        setState(() {
                          teamBpoint++;
                        });
                      },
                      child: Text(
                        'add 1 point',
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoint += 2;
                          });
                        },
                        child: Text(
                          'add 2 point',
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(150, 40)),
                        onPressed: () {
                          setState(() {
                            teamBpoint += 3;
                          });
                        },
                        child: Text(
                          'add 3 point',
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamApoint = 0;
                  teamBpoint = 0;
                });
              },
              child: Text('Rest',
                  style: TextStyle(color: Colors.white, fontSize: 19)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, minimumSize: Size(150, 40)),
            )
          ],
        ),
      ),
    );
  }
}
