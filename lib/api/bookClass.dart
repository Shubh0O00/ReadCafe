class BookClass {
  final String createdAt;
  final String id;
  final String title;
  final int rating;
  final String selectedFile;

  BookClass({
    required this.createdAt,
    required this.id,
    required this.title,
    required this.rating,
    required this.selectedFile,
  });

  factory BookClass.fromJson(Map<String, dynamic> json) {
    return BookClass(
      title: json['title'],
      id: json['_id'],
      rating: json['rating'],
      selectedFile: json['selectedFile'],
      createdAt: json['createdAt'],
    );
  }
}
