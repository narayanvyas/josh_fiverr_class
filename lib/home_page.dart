import 'package:flutter/material.dart';

// Root widget of every page is known as Scaffold

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(
          'My First Page',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          children: [
            Text('Hello World'),
            Text('Hello World 2'),
            Text('Hello World 3'),
            Text('Hello World 4'),
            SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2023/08/05/14/24/twilight-8171206_1280.jpg'),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter Email'),
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  print('Clicked on this button');
                },
                child: Text('Click Me'))
          ],
        ),
      ),
    );
  }
}
