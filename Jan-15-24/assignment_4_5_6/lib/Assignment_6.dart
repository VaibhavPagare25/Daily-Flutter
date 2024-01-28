import 'package:flutter/material.dart';

class Assignment6 extends StatefulWidget {
  const Assignment6({super.key});

  @override
  State<Assignment6> createState() => _Assignment6State();
}

class _Assignment6State extends State<Assignment6> {
  int index = 0;
  String label = '';
  List<String> imageList = [
    'https://live.staticflickr.com/8064/8249753855_bbdbcd5344_z.jpg',
    'https://live.staticflickr.com/8358/8297629214_efc30dd68d_z.jpg',
    'https://live.staticflickr.com/8247/8516817076_ee5a666234_z.jpg',
    'https://live.staticflickr.com/8067/8281120065_7ae8b80748_z.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Assignment-6',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.network(
              imageList[index],
              height: 400,
              width: 300,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              label,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            // Next Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  index++;
                  if (index == imageList.length) {
                    index = imageList.length - 1;
                    label = 'last image!';
                  }
                });
              },
              child: const Text('Next'),
            ),
            const SizedBox(
              height: 30,
            ),

            // Reset Button
            ElevatedButton(
              onPressed: () {
                setState(() {
                  index = 0;
                  label = '';
                });
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
