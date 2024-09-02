class Video {
  final String title;
  final String views;
  final String date;
  final String thumbnailUrl;

  Video({
    required this.title,
    required this.views,
    required this.date,
    required this.thumbnailUrl,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      title: json['title'],
      views: json['views'],
      date: json['date'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}
