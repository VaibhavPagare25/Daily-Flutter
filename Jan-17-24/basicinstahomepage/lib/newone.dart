import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<Assignment4> createState() => _Assignment4State();
}

class _Assignment4State extends State<Assignment4> {
  List<bool> likedStatus = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo1.png',
          height: 400,
          width: 150,
        ),
        backgroundColor: Colors.black,
        actions: const [
          Icon(
            Icons.favorite_outline_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.messenger_outline_sharp,
            color: Colors.white,
          ),
        ],
      ),
      body: ListView(
        children: [
          for (int i = 0; i < likedStatus.length; i++)
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                    padding: EdgeInsets.only(top: 5, right: 5, left: 5)),
                Image.network(
                  getImageUrl(i),
                  //width: double.infinity,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Row(children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        likedStatus[i] = !likedStatus[i];
                      });
                    },
                    icon: Icon(
                      likedStatus[i]
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline_outlined,
                      // ? Icons.favorite_outline_outlined
                      // : Icons.favorite_rounded,

                      color: likedStatus[i] ? Colors.red : Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_outlined,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_add_outlined,
                      color: Colors.white,
                    ),
                  ),
                ])
              ],
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'search',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'person',
          ),
        ],
      ),
    );
  }

  String getImageUrl(int index) {
    switch (index) {
      case 0:
        return 'https://live.staticflickr.com/65535/53467254604_f262da4c62_z.jpg';
      case 1:
        return 'https://live.staticflickr.com/65535/53464614187_b6bbd1bbd9.jpg';
      case 2:
        return 'https://live.staticflickr.com/65535/53463506942_e1bc4c7882.jpg';
      case 3:
        return 'https://live.staticflickr.com/65535/53467254604_f262da4c62_z.jpg';
      case 4:
        return 'https://live.staticflickr.com/65535/53464614187_b6bbd1bbd9.jpg';
      case 5:
        return 'https://live.staticflickr.com/65535/53463506942_e1bc4c7882.jpg';

      default:
        return '';
    }
  }
}
