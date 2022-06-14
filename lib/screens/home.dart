import 'package:flutter/material.dart';
import 'package:stone_paper_scissor/screens/play.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
            child: Container(
          padding: EdgeInsets.only(top: 10),
          constraints: const BoxConstraints(maxHeight: 340),
          margin: EdgeInsets.symmetric(horizontal: 8),
          child: Expanded(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    print("play!!");
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Play(),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/play.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/images/pl.jpg',
                  width: 150,
                  height: 80,
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
