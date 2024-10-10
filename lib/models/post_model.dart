import 'package:html/parser.dart' as html_parser;
import 'package:intl/intl.dart';

class Post {
  final int id;
  final String title;
  final String excerpt;
  final String dateGmt; // Keep the raw date for future use

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
      excerpt: _stripHtmlTags(json['excerpt']['rendered']), // Strip HTML from excerpt
      dateGmt: _formatDate(json['date_gmt']), // Format the date_gmt
    );
  }

  // Helper method to strip HTML tags from a string
  static String _stripHtmlTags(String htmlString) {
    final document = html_parser.parse(htmlString);
    return document.body?.text ?? ''; // Return plain text
  }

  // Helper method to format the date_gmt string
  static String _formatDate(String dateGmt) {
    // Parse the date string into a DateTime object
    final DateTime parsedDate = DateTime.parse(dateGmt);

    // Format the date to "10:31am January 1, 2024"
    final DateFormat formatter = DateFormat('h:mma MMMM d, yyyy');
    String formattedDate = formatter.format(parsedDate);

    // Capitalize the first letter of the month
    List<String> parts = formattedDate.split(' ');
    if (parts.length > 1) {
      parts[1] = parts[1][0].toUpperCase() + parts[1].substring(1); // Capitalize the month
    }

    return parts.join(' '); // Join the parts back into a single string
  }
}
