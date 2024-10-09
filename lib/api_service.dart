import 'package:dio/dio.dart';
import 'post_model.dart';

class ApiService {
  final String url = 'https://www.ipophil.gov.ph/wp-json/wp/v2/posts';
  Dio dio = Dio();

  Future<List<Post>> fetchPosts() async {
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        List<Post> posts = (response.data as List).map((postJson) {
          return Post.fromJson(postJson);
        }).toList();
        return posts;
      } else {
        throw Exception('Failed to load posts');
      }
    } catch (e) {
      throw Exception('Error fetching posts: $e');
    }
  }
}
