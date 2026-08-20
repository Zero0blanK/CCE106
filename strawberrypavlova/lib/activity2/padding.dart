import 'package:flutter/material.dart';

class PaddingSample extends StatelessWidget {
  const PaddingSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nerosa_Activity 2'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(color: Colors.black),
              ),
              child: Container(
                padding: EdgeInsets.all(16),
                color: Colors.red,
                child: const Text('EdgeInsets.all(16)'),
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(color: Colors.black),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                color: Colors.yellow,
                child: const Text(
                  'EdgeInsets.symmetric(horizontal: 40, vertical: 10)',
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(color: Colors.black),
              ),
              child: Container(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 16,
                  top: 12,
                  bottom: 16,
                ),
                color: Colors.red,
                child: const Text(
                  'EdgeInsets.only(left: 30, right: 16, top: 12, bottom: 16)',
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(color: Colors.black),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 30, 40, 50),
                color: Colors.red,
                child: const Text('EdgeInsets.fromLTRB(20, 30, 40, 50)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
