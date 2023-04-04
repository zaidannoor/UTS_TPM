import 'package:flutter/material.dart';
import './detail_profile_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('Profile Page'),
      )),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 1),
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.asset(
                  'images/self-picture.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 24.0),
                  Text("Zaidan Noor Irfan", style: TextStyle(fontSize: 20)),
                  Text("123200066", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 8.0),
                  InkWell(
                    child: Text(
                      'Detail Profile',
                      style: TextStyle(
                          fontSize: 18,
                          // fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailProfilePage()));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
