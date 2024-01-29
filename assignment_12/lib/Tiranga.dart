import 'package:flutter/material.dart';

class Tiranga extends StatelessWidget {
  const Tiranga({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.orangeAccent, Colors.white70, Colors.green],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 50, right: 5),
                  height: 600,
                  width: 10,
                  color: Colors.brown,
                ),
              ]),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    height: 80,
                    width: 350,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 80,
                    width: 350,
                    color: Colors.white,
                    child: Image.asset(
                      'assets/images/charkra.png',
                      height: 80,
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 350,
                    color: Colors.green,
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 400,
                child: Image.asset(
                  'assets/images/download.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
