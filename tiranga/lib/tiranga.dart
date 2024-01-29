import 'dart:ui';

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
          colors: [Colors.amberAccent, Colors.white70, Colors.yellowAccent],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, right: 5),
                height: 700,
                width: 10,
                color: Colors.brown,
              ),
              Column(
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
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "करून",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "राजेशाहीच्या धिक्कार,",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "केला लोकशाहीचा",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "स्वीकार !",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "अमृतमहोत्सवी",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo),
                        ),
                        Text(
                          "प्रजासत्ताक दिन",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo),
                        ),
                        Text(
                          "चिरायू होवो !",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo),
                        ),
                        Text(
                          "२६ जानेवारी ",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            //color: Colors.indigo
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          Positioned(
            top: 680,
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/download.png',
              width: double.infinity,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
