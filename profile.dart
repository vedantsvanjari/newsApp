import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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

          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: Icon(
                  Icons.person,
                  size: 200,
                ),
              ),
            ),
            SizedBox(height: 20),
            // Name
            Center(
              child: Text(
                'XYZ', // Replace with user name
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            // Bio
            Center(
              child: Text(
                'A software developer passionate about Flutter and mobile development.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            // Divider
            Divider(),
            SizedBox(height: 10),
            // Contact Info
            Text(
              'Contact Info:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Email: abcd@example.com',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 5),
            Text(
              'Phone: +123 456 7890',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            // Button to Edit Profile (Optional)
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add logic to edit profile here
                  AlertDialog(
                    title: Text('Edit button pressed'),
                  );
                },
                child: Text('Edit Profile'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
