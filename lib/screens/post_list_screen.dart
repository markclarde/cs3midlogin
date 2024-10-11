import 'package:flutter/material.dart';
import '../models/post_model.dart'; // Your Post model file
import '../services/api_service.dart'; // Your API service file
import 'package:CS3MidLogin/components/post_card.dart'; // Your PostCard widget

class PostListScreen extends StatefulWidget {
  const PostListScreen({Key? key}) : super(key: key);

  @override
  _PostListScreenState createState() => _PostListScreenState();
}

class _PostListScreenState extends State<PostListScreen> {
  late Future<List<Post>> futurePosts;

  @override
  void initState() {
    super.initState();
    // Fetch the posts when the screen initializes
    futurePosts = ApiService().fetchPosts(); // Your API service method to get the posts
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Blog Posts'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Add padding for mobile view
          child: FutureBuilder<List<Post>>(
            future: futurePosts,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                // Display a loading spinner while waiting for the data
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                // Display error message if the API call fails
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                // When data is available, render it in a ListView
                return Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width < 600
                        ? double.infinity // Full width for small screens (mobile)
                        : 450, // Default width for larger screens (e.g., tablets, desktops)
                    child: ScrollConfiguration(
                      behavior: ScrollBehavior().copyWith(overscroll: false, scrollbars: false), // Hide scrollbars
                      child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          final post = snapshot.data![index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8.0), // Add spacing between cards
                            child: PostCard(post: post), // Reusable PostCard widget
                          );
                        },
                      ),
                    ),
                  ),
                );
              } else {
                // If no data is available, show a message
                return const Center(child: Text('No posts available'));
              }
            },
          ),
        ),
      ),
    );
  }
}
