import 'package:flutter/material.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,

          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(color: Colors.black, fontSize: 32),
              ),

              subtitle: Padding(
                padding: EdgeInsetsGeometry.symmetric(vertical: 16),
                child: Text(
                  'Build your career with tharwat samy',
                  style: TextStyle(color: Colors.black38, fontSize: 20),
                ),
              ),
              trailing: Icon(Icons.delete, color: Colors.black, size: 32),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0, bottom: 16),
                child: Text(
                  'May 21,2022',
                  style: TextStyle(color: Colors.black38, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
