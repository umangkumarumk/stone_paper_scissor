import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class Play extends StatefulWidget {
  final player;
  const Play({Key? key, this.player}) : super(key: key);

  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.yellowAccent,
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Center(
                    child: Text(
                      "${widget.player}'s Turn",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 8, 187, 231),
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          constraints: const BoxConstraints(maxHeight: 300),
                          child: InkWell(
                            onTap: () {
                              print("Rock");
                              "${widget.player}" == box.read('player1')
                                  ? box.write('p1', "bronze")
                                  : box.write('p2', "bronze");
                              Navigator.of(context).pop();
                            },
                            child: Column(children: [
                              Expanded(
                                child: Image.asset(
                                  'assets/images/bronze.png',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              const Expanded(
                                child: Text(
                                  "Rock",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 219, 36, 195),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          constraints: const BoxConstraints(maxHeight: 340),
                          child: InkWell(
                            onTap: () {
                              print("paper");
                              Navigator.of(context).pop();
                              "${widget.player}" == box.read('player1')
                                  ? box.write('p1', "paper")
                                  : box.write('p2', "paper");
                            },
                            child: Column(children: [
                              Expanded(
                                child: Image.asset(
                                  'assets/images/paper.png',
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              const Expanded(
                                child: Text(
                                  "Paper",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 219, 36, 195),
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                      Container(
                        constraints: const BoxConstraints(maxHeight: 340),
                        child: InkWell(
                          onTap: () {
                            print("scissor");
                            Navigator.of(context).pop();
                            "${widget.player}" == box.read('player1')
                                ? box.write('p1', "scissors")
                                : box.write('p2', "scissors");
                          },
                          child: Column(children: [
                            Expanded(
                              child: Image.asset(
                                'assets/images/scissors.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const Expanded(
                              child: Text(
                                "Scissor",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 219, 36, 195),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ]),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
