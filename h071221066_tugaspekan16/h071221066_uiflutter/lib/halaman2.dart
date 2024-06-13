import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/gambar1.jpg',
    'assets/gambar2.jpg',
    'assets/gambar3.jpg',
    'assets/gambar4.jpg',
    'assets/gambar5.jpg',
    'assets/gambar6.jpg',
    'assets/gambar7.jpg',
    'assets/gambar8.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Greeting with Avatar
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  // Greeting
                  Text('Hi, H071221066', style: TextStyle(fontSize: 22)),
                  Spacer(), // Add a spacer to push the avatar to the right
                  // Avatar
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.png'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Favorite Places Title
            Text('Favorite', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            // Horizontal List of Images
            Container(
              height: 300, // Increased height for larger images
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imagePaths.length, // Number of images
                itemBuilder: (context, index) {
                  return Container(
                    width: 200, // Increased width for larger images
                    margin: EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10), // Optional: Add border radius to images
                      child: Image.asset(
                        imagePaths[index],
                        fit: BoxFit.cover, // Ensure images cover the container fully
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}