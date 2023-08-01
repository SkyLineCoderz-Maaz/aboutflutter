class MessageModel{
  int timeStamp;
  String message;
  bool isMe;

//<editor-fold desc="Data Methods">
  MessageModel({
    required this.timeStamp,
    required this.message,
    required this.isMe,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MessageModel &&
          runtimeType == other.runtimeType &&
          timeStamp == other.timeStamp &&
          message == other.message &&
          isMe == other.isMe);

  @override
  int get hashCode => timeStamp.hashCode ^ message.hashCode ^ isMe.hashCode;

  @override
  String toString() {
    return 'MessageModel{' +
        ' timeStamp: $timeStamp,' +
        ' message: $message,' +
        ' isMe: $isMe,' +
        '}';
  }

  MessageModel copyWith({
    int? timeStamp,
    String? message,
    bool? isMe,
  }) {
    return MessageModel(
      timeStamp: timeStamp ?? this.timeStamp,
      message: message ?? this.message,
      isMe: isMe ?? this.isMe,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'timeStamp': this.timeStamp,
      'message': this.message,
      'isMe': this.isMe,
    };
  }

  factory MessageModel.fromMap(Map<String, dynamic> map) {
    return MessageModel(
      timeStamp: map['timeStamp'] as int,
      message: map['message'] as String,
      isMe: map['isMe'] as bool,
    );
  }

//</editor-fold>
}