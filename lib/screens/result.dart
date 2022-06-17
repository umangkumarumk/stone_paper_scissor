import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'package:stone_paper_scissor/screens/Name.dart';
import 'package:stone_paper_scissor/screens/home.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final box = GetStorage();
  //String p1 = box.read('p1');
  // String res(){
  //   String p1=box.read('p1');
  //   String p2=box.read('p2');
//   Text:((box.read('p1')=='bronze'&&box.read('p2')=='scissors')||(box.read('p1')=='scissors'&&box.read('p2')=='paper')||(box.read('p1')=='paper'&&box.read('p2')=='bronze'))?("Player 1 won")
// :("Player 2 won"),
  //   return
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.yellowAccent,
            body: Column(
              children: [
                if ((box.read('p1') == 'bronze' &&
                        box.read('p2') == 'scissors') ||
                    (box.read('p1') == 'scissors' &&
                        box.read('p2') == 'paper') ||
                    (box.read('p1') == 'paper' && box.read('p2') == 'bronze'))
                  Padding(
                    padding: const EdgeInsets.all(80.0),
                    child: Center(
                        child: Text(
                      "${box.read('player1')} Won",
                      style: const TextStyle(
                          color: Colors.green,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )),
                  )
                else if ((box.read('p1') == (box.read('p2'))))
                  const Padding(
                      padding: EdgeInsets.all(80.0),
                      child: Center(
                          child: Text(
                        "It's A Draw !",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      )))
                else
                  Padding(
                      padding: const EdgeInsets.all(80.0),
                      child: Center(
                          child: Text(
                        "${box.read('player2')} Won",
                        style: const TextStyle(
                            color: Colors.green,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ))),
                Row(children: [
                  // Expanded(
                  //     child: Image.asset(
                  //   'assets/images/${box.read('p1')}.png',
                  //   width: 100,
                  //   height: 100,
                  // )),
                  Expanded(
                    child: Container(
                      constraints: const BoxConstraints(maxHeight: 300),
                      child: Column(children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/${box.read('p1')}.png',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "${box.read('player1')}",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 8, 187, 231),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ]),
                    ),
                  ),

                  // Expanded(
                  //   child: Image.asset(
                  //     'assets/images/${box.read('p2')}.png',
                  //     width: 100,
                  //     height: 100,
                  //   ),
                  // ),
                  Expanded(
                    child: Container(
                      constraints: const BoxConstraints(maxHeight: 300),
                      child: Column(children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/${box.read('p2')}.png',
                            width: 100,
                            height: 100,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "${box.read('player2')}",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 8, 187, 231),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ]),
                    ),
                  ),
                ]),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 176, 39, 96)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          )),
                      child: const Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          "Play Again",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
