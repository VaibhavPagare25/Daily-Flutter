import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NetflixUi(),
    );
  }
}

class NetflixUi extends StatefulWidget {
  const NetflixUi({super.key});

  @override
  State<NetflixUi> createState() => _NetflixUiState();
}

class _NetflixUiState extends State<NetflixUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Image.asset(
          'assets/images/NetflixLogo.png',
          height: 75,
        ),
        backgroundColor: Colors.black,
      ),
      // title: const Text("Netflix"),
      // iconTheme: IconThemeData,
      // backgroundColor: Colors.black,
      // titleTextStyle: const TextStyle(
      //   fontStyle: FontStyle.normal,
      //   fontSize: 30,
      //   color: Colors.black,
      // ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "MOVIES",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Divider(
                  color: Colors.black,
                ),
                Image.asset(
                  'assets/images/allquite.jpg',
                  height: 350,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/matrix.jpg',
                  height: 350,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/jawan.jpg',
                  height: 350,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/rees.jpg',
                  height: 350,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "WEBSERIES",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const Divider(
            color: Colors.black,
            height: 5,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.network(
                  'https://assetscdn1.paytm.com/images/catalog/product/H/HO/HOMSHERLOCK-HOLHK-P63024784A1CC1B/1563111214645_0..jpg',
                  height: 200,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  //'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg',
                  'https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQeIeKt7LlqIJPKrT4aQijclj7K43xRSU3dQXNESNdNbnnJbT6LLWVRT9srUUbHbOo-iOH-8v3o16pUDMQ6tCgNGlkvfwvDOprROIZpQ2rgHtop9rHvbYlvzavMmUSGBCXjynJ80dn4nqZzZmzIUJMQpS.jpg?r=943',
                  height: 200,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  //'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg',
                  'https://www.tallengestore.com/cdn/shop/products/PeakyBlinders-NetflixTVShow-ArtPoster_125897c4-6348-41e8-b195-d203700ebcca.jpg?v=1619864555',
                  height: 200,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg',
                  height: 200,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "MOSTPOPULAR",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const Divider(
            color: Colors.black,
            height: 5,
            thickness: BorderSide.strokeAlignCenter,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.network(
                  //'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg',
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0kR0gMemRl9ylPTzmmuQQVb10vo8n7kXL7BeHkeo_4lmJS56C8-WKIy_GYK12wnEmPlc',
                  height: 200,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  //'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg',
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ5Cq8kozpWIaq5Aohw4rjKkh_eE7nUkDV5zcHClQaYw&s',
                  height: 200,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  //'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg',
                  'https://dbdzm869oupei.cloudfront.net/img/posters/preview/91008.png',
                  height: 200,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.network(
                  'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC/et00311762-lmdexnggxy-portrait.jpg',
                  height: 200,
                )
              ],
            ),
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
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_fill),
            label: 'Play',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_for_offline_rounded),
            label: 'Downloads',
          ),
        ],
      ),
    );
  }
}
