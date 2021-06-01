import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ninja Id Card'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800]
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.redAccent, 
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10),
            Text(
              'John Doe',
              style: TextStyle(
                color: Colors.amberAccent, 
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Current Ninja Level',
              style: TextStyle(
                color: Colors.redAccent, 
                letterSpacing: 2.0
              ),
            ),
            Text(
              '8',
              style: TextStyle(
                color: Colors.amberAccent, 
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(Icons.email, color: Colors.amberAccent),
                SizedBox(width: 10),
                Text(
                  'john.doe@gmail.com',
                  style: TextStyle(
                    color: Colors.redAccent, 
                    letterSpacing: 2.0,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        )
      ),
    );
  }
}