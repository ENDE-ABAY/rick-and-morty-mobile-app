import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.id, required this.name});

  final String id;
  final String name;

  @override
  Widget build(BuildContext context) {
    // Access both id and name for display
    return Scaffold(
      appBar: AppBar(
        title: Text(id),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   'ID: $id',
            //   style: TextStyle(fontSize: 20.0),
            // ),
            SizedBox(height: 16.0), // Add spacing between ID and name
            Text(
              'Name: $name', // Use "name" instead of "Character Name"
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
