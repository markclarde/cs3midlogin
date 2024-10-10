class Post {
  final int id;
  final String title;
  final String excerpt;
  final String dateGmt;

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
      excerpt:
          _stripHtml(json['excerpt']['rendered']), // Strip HTML from excerpt
      dateGmt: json['date_gmt'],
    );
  }

  static String _stripHtml(String html) {
    return html.replaceAll(RegExp(r'<[^>]*>'), ''); // Remove HTML tags
  }
}
