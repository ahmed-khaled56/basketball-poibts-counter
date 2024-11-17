import 'package:flutter/material.dart';


void main() {
  runApp(Basketball_counter_points_app());
}

class Basketball_counter_points_app extends StatefulWidget {
  @override
  State<Basketball_counter_points_app> createState() =>
      _Basketball_counter_points_appState();
}

class _Basketball_counter_points_appState
    extends State<Basketball_counter_points_app> {
  void addOnepoint() {
    print('add one point');
  }

  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            AppBar(
              backgroundColor: const Color(0xFFff9800),
              title: const Text(
                'Basketball Points Counter',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      Text(
                        '$teamApoints',
                        style: TextStyle(
                          fontSize: 130,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(100, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(100, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            for (int i = 0; i <= 1; i++) {
                              teamApoints++;
                            }
                          });
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(100, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            for (int i = 0; i <= 2; i++) {
                              teamApoints++;
                            }
                          });
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    width: 60,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      Text(
                        '$teamBpoints',
                        style: TextStyle(
                          fontSize: 130,
                          color: Colors.black,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(100, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            teamBpoints++;
                          });
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.orange,
                          minimumSize: Size(100, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            for (int i = 0; i <= 1; i++) {
                              teamBpoints++;
                            }
                          });
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(100, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            for (int i = 0; i <= 2; i++) {
                              teamBpoints++;
                            }
                          });
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.orange,
                minimumSize: const Size(150, 40),
              ),
              onPressed: () {
                setState(() {
                  teamApoints = 0;
                  teamBpoints = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
