import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class Single extends StatefulWidget {
  final Player;
  const Single({Key? key, this.Player}) : super(key: key);

  @override
  State<Single> createState() => _SingleState();
}

class _SingleState extends State<Single> {
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.yellowAccent,
            body: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 80.0),
                  child: Center(
                    child: Text(
                      "Your Turn",
                      style: TextStyle(
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
                              box.write('p1', "bronze");

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
                              box.write('p1', "paper");
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
                            box.write('p1', "scissors");
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
