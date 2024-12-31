import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Search",
                hintText: "Search articles...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ),
          // Placeholder for search results or content
          Expanded(
            child: Center(
              child: Text(
                "Search results will appear here.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      );

  }
}
