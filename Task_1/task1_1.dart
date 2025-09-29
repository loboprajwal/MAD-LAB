// Task 1: Common Widgets UI
// =========================

// Sub-Task 1.1: Social Media Profile Card
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile Card"),
          actions: [IconButton(icon: Icon(Icons.settings), onPressed: () {})],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 50, backgroundImage: AssetImage("assets/profile.jpg")),
            SizedBox(height: 10),
            Text("John Doe", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text("Flutter Developer", style: TextStyle(color: Colors.grey[600])),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [Text("100"), Text("Posts")]),
                Column(children: [Text("250"), Text("Followers")]),
                Column(children: [Text("180"), Text("Following")]),
              ],
            )
          ],
        ),
      ),
    );
  }
}