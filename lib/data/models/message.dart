class Message {
  final String fromUserId;
  final String toUserId;
  final String messageId;
  final String content;
  final MessageType type;
  final DateTime date;
  final String imageUrl;
  bool isSeen;

  Message({
    required this.fromUserId,
    required this.toUserId,
    required this.messageId,
    required this.type,
    required this.content,
    required this.date,
    required this.imageUrl,
    this.isSeen = false,
  });

  factory Message.fromJson(Map<String, Object?> json) {
    final String messageId = json['messageId'] as String;
    final String fromUserId = json['fromUserId'] as String;
    final String toUserId = json['toUserId'] as String;
    final String content = json['content'] as String;
    final String? imageUrl = json["imageUrl"] as String?;
    final DateTime date = DateTime.parse(json['date'] as String);
    final bool isSeen = json['isSeen'] as bool;
    final MessageType type = (json['type'] as String) == "text"
        ? MessageType.text
        : MessageType.image;

    return Message(
      messageId: messageId,
      date: date,
      isSeen: isSeen,
      fromUserId: fromUserId,
      toUserId: toUserId,
      imageUrl: imageUrl ?? "",
      type: type,
      content: content,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'messageId': messageId,
      'content': content,
      'type': type.name,
      'date': date.toIso8601String(),
      'isSeen': isSeen,
      // "imageUrl": imageUrl,
      'toUserId': toUserId,
      "fromUserId": fromUserId,
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Message &&
          runtimeType == other.runtimeType &&
          date == other.date;

  @override
  int get hashCode => Object.hash(toUserId, messageId);
}

enum MessageType { text, image }
