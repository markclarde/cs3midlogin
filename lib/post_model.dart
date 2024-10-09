class Post {
  final int id;
  final String title;
  final String excerpt; // Change this to store the excerpt
  final String dateGmt; // New field for date_gmt

  Post({
    required this.id,
    required this.title,
    required this.excerpt,
    required this.dateGmt,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title']['rendered'],
      excerpt: json['excerpt']['rendered'], // Extract the excerpt
      dateGmt: json['date_gmt'], // Extract the date_gmt
    );
  }
}
