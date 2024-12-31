import 'package:flutter/material.dart';

class PremiumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // 1 Month Subscription
          SubscriptionTile(
            title: "1 Month Subscription",
            price: "₹99/month",
            description: "Enjoy uninterrupted news for a month.",
            color: Colors.lightBlueAccent,
            onTap: () {
              // Handle subscription logic for 1 month
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("1 Month Subscription Selected")),
              );
            },
          ),

          const SizedBox(height: 16.0), // Spacing between tiles

          // 3 Month Subscription
          SubscriptionTile(
            title: "3 Month Subscription",
            price: "₹249/3 months",
            description: "Save more with our 3-month plan.",
            color: Colors.greenAccent,
            onTap: () {
              // Handle subscription logic for 3 months
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("3 Month Subscription Selected")),
              );
            },
          ),

          const SizedBox(height: 16.0), // Spacing between tiles

          // 1 Year Subscription
          SubscriptionTile(
            title: "1 Year Subscription",
            price: "₹799/year",
            description: "Best value for our premium service.",
            color: Colors.amberAccent,
            onTap: () {
              // Handle subscription logic for 1 year
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("1 Year Subscription Selected")),
              );
            },
          ),
        ],
      );
  }
}

// Reusable SubscriptionTile Widget
class SubscriptionTile extends StatelessWidget {
  final String title;
  final String price;
  final String description;
  final Color color;
  final VoidCallback onTap;

  const SubscriptionTile({
    Key? key,
    required this.title,
    required this.price,
    required this.description,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Trigger onTap when the tile is tapped
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 8.0,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              price,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
