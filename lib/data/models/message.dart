class MessageModel {
  final String messageId;
  final String? message;
  final String? mediaUrl;
  final DateTime date;
  bool isSeen;

  MessageModel({
    required this.messageId,
    required this.message,
    required this.mediaUrl,
    required this.date,
    this.isSeen = false,
  });

  factory MessageModel.fromJson(Map<String, Object?> json) {
    final String messageId = json['messageId'] as String;
    final String? message = json['message'] as String?;
    final String? mediaUrl = json['mediaUrl'] as String?;
    final DateTime date = DateTime.parse(json['date'] as String);
    final bool isSeen = json['isSeen'] as bool;

    return MessageModel(
      messageId: messageId,
      message: message,
      mediaUrl: mediaUrl,
      date: date,
      isSeen: isSeen,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'messageId': messageId,
      'message': message,
      'mediaUrl': mediaUrl,
      'date': date,
      'isSeen': isSeen,
    };
  }
}
