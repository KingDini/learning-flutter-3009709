class ChatMessageEntity {
  String id;
  String text;
  String? imageUrl;
  int createdAt;
  Author author;

  ChatMessageEntity(
      {required this.id,
      required this.text,
      this.imageUrl,
      required this.createdAt,
      required this.author});
}

class Author {
  String userName;

  Author({required this.userName});
}
