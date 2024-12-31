import 'package:flutter/material.dart';
import 'profile.dart';

class DetailedPage extends StatelessWidget {
  final Map<String, dynamic> article;

  const DetailedPage({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0), // AppBar height
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4), // Shadow color
                offset: const Offset(0, 4), // Shadow direction (only down)
                blurRadius: 8.0, // Blurring effect of the shadow
              ),
            ],
          ),
          child: AppBar(
            elevation: 0,
            title: const Text(
              'newsTODAY',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>const profile())
                      );
                    },
                    icon: Icon(Icons.person),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Article Image
              if (article['urlToImage'] != null && article['urlToImage'].isNotEmpty)
                Image.network(
                  article['urlToImage'],
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.broken_image, size: 50),
                ),

              const SizedBox(height: 16),

              // Article Title
              Text(
                article['title'] ?? 'No Title',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),

              const SizedBox(height: 8),

              // Article Description
              Text(
                article['description'] ?? 'No Description',
                style: const TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 16),

              // Full Content
              Text(
                article['content'] ?? 'No Content Available',
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
