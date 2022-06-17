import 'package:flutter/material.dart';
import 'package:stone_paper_scissor/screens/Name.dart';
import 'package:stone_paper_scissor/screens/namesingle.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
            child: Container(
          padding: EdgeInsets.only(top: 10),
          constraints: const BoxConstraints(maxHeight: 570),
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Image.asset(
                'assets/images/11.png',
                width: 250,
                height: 200,
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/play.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: () {
                        print("play!!");
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => NameSingle(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/images/sp.png',
                        width: 150,
                        height: 100,
                      )),
                  InkWell(
                      onTap: () {
                        print("play!!");
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => NameInput(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/images/mp.png',
                        width: 150,
                        height: 100,
                      ))
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
