import 'package:flutter/material.dart';

Widget weatherCard(Map<String, dynamic> data) {
  return Card(
    margin: EdgeInsets.all(20),
    child: Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            data['icon'],
            width: 100,
          ),
          SizedBox(height: 50),
          Text(
            data['city'],
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text("${data['temp']}°C"),
          Text(data['condition']),
        ],
      ),
    ),
  );
}
