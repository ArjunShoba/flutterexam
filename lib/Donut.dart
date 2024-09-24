import 'package:flutter/material.dart';

class Donut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, 
              children: [
                IconButton(
                  icon: Icon(Icons.menu, size: 30, color: Colors.black),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Menu button pressed'),
                      ),
                    );
                  },
                ),
                SizedBox(height: 8), 
                Text(
                  "I want to Eat...",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, 
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  child: Center(
                    child: Text('Item $index'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
