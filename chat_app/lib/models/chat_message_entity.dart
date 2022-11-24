class ChatMessageEntity {
  String text = "";
  String? imageUrl;
  String id = "";
  int createdAt = 0;
  Author author = Author(userName: "");

  ChatMessageEntity(
      {required this.text,
      required this.id,
      required this.createdAt,
      this.imageUrl,
      required this.author});

  ChatMessageEntity.fromJson(Map<String, dynamic> json) {
    text = json["text"];
    id = json["id"];
    author = Author.fromJson(json["author"]);
  }
}

class Author {
  String userName = "";

  Author({required this.userName});

  Author.fromJson(Map<String, dynamic> json) {
    this.userName = json["username"];
  }
}
