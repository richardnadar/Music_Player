import 'package:flutter/material.dart';

class MyIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Text(
      "WELCOME TO PARADISE",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: Colors.orange.shade300,
    actions: <Widget>[
      IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {
              Navigator.pushNamed(context, "/music");
            },)
    ],
  ),
  body: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              image: DecorationImage(
          image: NetworkImage('https://www.edmsauce.com/wp-content/uploads/2017/03/EDM-Wallpaper-1-1.jpg'),

          fit: BoxFit.cover
            ),
            ),
  )
    );
  }
}
