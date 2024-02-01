import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  int count = 0;
  void incrementCount() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Portfolio",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/backround.jpg',
              fit: BoxFit.cover,
            ),
          ),
          (count != 0)
              ? SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      (count >= 1)
                          ? const Row(
                              children: [
                                Text(
                                  "Name: Vaibhav Pagare",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            )
                          : Container(
                              height: 2,
                            ),
                      (count >= 2)
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 200,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Image.asset(
                                    'assets/images/photo.jpeg',
                                    height: 200,
                                    width: 200,
                                  ),
                                ),
                              ],
                            )
                          : Container(
                              height: 2,
                            ),
                      (count >= 3)
                          ? const Row(
                              children: [
                                Text(
                                  "College: ZCOER",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            )
                          : Container(
                              height: 2,
                            ),
                      (count >= 4)
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 200,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Image.asset(
                                    'assets/images/zealLogo.png',
                                    height: 200,
                                    width: 200,
                                  ),
                                ),
                              ],
                            )
                          : Container(
                              height: 2,
                            ),
                      (count >= 5)
                          ? const Row(
                              children: [
                                Text(
                                  "Dream Company: NVIDIA",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            )
                          : Container(
                              height: 2,
                            ),
                      (count >= 6)
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 200,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Image.asset(
                                    'assets/images/compLogo.jpeg',
                                    height: 200,
                                    width: 200,
                                  ),
                                ),
                              ],
                            )
                          : Container(
                              height: 2,
                            ),
                    ],
                  ),
                )
              : Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Welcome to my Portfolio!",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Crafting digital experiences with precision and passion.",
                      ),
                      Image.asset("assets/images/front.png")
                    ],
                  ),
                ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: incrementCount,
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              child: const Icon(Icons.restore_page))
        ],
      ),
    );
  }
}
