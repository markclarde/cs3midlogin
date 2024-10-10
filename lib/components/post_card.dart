import 'package:flutter/material.dart';
import '../models/post_model.dart'; // Ensure this import path is correct

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10), // Adjust padding for mobile
      child: Container(
        width: screenWidth < 600 ? double.infinity : screenWidth * 0.85, // Adjust width based on screen size
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image at the top
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg', // Placeholder image
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              // Title section
              Container(
                padding: const EdgeInsets.all(10),
                color: const Color(0xFF6249E9), // Custom background color
                width: double.infinity,
                child: Text(
                  post.title,
                  style: const TextStyle(
                    fontSize: 18, // Slightly smaller for mobile
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Post details (date, likes, etc.)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Date
                    Row(
                      children: [
                        const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                        const SizedBox(width: 5),
                        Text(
                          post.dateGmt, // Formatted date
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                    // Like count
                    Row(
                      children: [
                        const Icon(Icons.favorite, size: 16, color: Colors.red),
                        const SizedBox(width: 5),
                        Text(
                          '102', // Example like count
                          style: const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Excerpt
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  post.excerpt, // Post excerpt
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 10),
              // Read More button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle read more action
                    print('Read more clicked for post: ${post.id}');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6249E9), // Custom button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'READ MORE',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
