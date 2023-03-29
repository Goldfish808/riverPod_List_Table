class Post {
  Post({required this.number, required this.title, required this.writer, required this.date, required this.viewer});
  String number;
  String title;
  String writer;
  String date;
  String viewer;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        number: json["number"],
        title: json["title"],
        writer: json["writer"],
        date: json["date"],
        viewer: json["viewer"],
      );
}
