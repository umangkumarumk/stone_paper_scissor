import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:stone_paper_scissor/screens/play.dart';
import 'package:stone_paper_scissor/screens/result.dart';

class NameInput extends StatefulWidget {
  const NameInput({Key? key}) : super(key: key);

  @override
  State<NameInput> createState() => _NameInputState();
}

class _NameInputState extends State<NameInput> {
  @override
  String p1 = "Player 1";
  String p2 = "Player 2";
  final box = GetStorage();
  final TextEditingController controller1 = TextEditingController();
  final TextEditingController controller2 = TextEditingController();
  List<String> img = ['stn', 'ppr', 'scr'];
  playerroute() async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Play(player: p1),
      ),
    );
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Play(player: p2),
      ),
    );
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Result(),
      ),
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
            child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Center(
                  child: Text(
                "Enter Names",
                style: TextStyle(
                    color: Color.fromARGB(255, 235, 11, 11),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Container(
                padding: EdgeInsets.only(top: 10, right: 35),
                constraints: const BoxConstraints(maxHeight: 300),
                margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset(
                              'assets/images/user.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          Expanded(
                              child: Container(
                            height: 45,
                            margin: EdgeInsets.only(top: 8.0),
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: TextFormField(
                              controller: controller1,
                              decoration: const InputDecoration(
                                hintText: "Player 1",
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0)),
                              ),
                            ),
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset(
                              'assets/images/user.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          Expanded(
                              child: Container(
                            height: 45,
                            margin: EdgeInsets.only(top: 8.0),
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: TextFormField(
                              controller: controller2,
                              decoration: const InputDecoration(
                                hintText: "Player 2",
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 0)),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ])),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        p1 = controller1.text != '' ? controller1.text : p1;
                        controller1.text != ''
                            ? box.write('player1', controller1.text)
                            : box.write('player1', p1);
                      });
                      setState(() {
                        p2 = controller2.text != '' ? controller2.text : p2;
                        controller2.text != ''
                            ? box.write('player2', controller2.text)
                            : box.write('player2', p2);
                      });

                      print("playy");
                      print("$p1");
                      print("$p2");
                      playerroute();
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
                        "Play",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
