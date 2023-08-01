import 'package:aboutflutter/Model/MessageModel.dart';
import 'package:aboutflutter/Model/Message_Bubble.dart';
import 'package:custom_utils/custom_utils.dart';
import 'package:flutter/material.dart';

class GroupMessagesTimeStampScreen extends StatefulWidget {
  const GroupMessagesTimeStampScreen({super.key});

  @override
  State<GroupMessagesTimeStampScreen> createState() =>
      _GroupMessagesTimeStampScreenState();
}
class _GroupMessagesTimeStampScreenState
    extends State<GroupMessagesTimeStampScreen> {
  final messageController = TextEditingController();
  ScrollController _scrollController = new ScrollController();

  List<MessageModel> messageList = [
    //adding data into model for Today date
    MessageModel(
        timeStamp: DateTime.now().microsecondsSinceEpoch,
        message:
            'Hello Today message and testing long thread for this i hope this will work',
        isMe: true),
    MessageModel(
        timeStamp: DateTime.now().microsecondsSinceEpoch,
        message: 'Hello Today Message',
        isMe: false),
    MessageModel(
        timeStamp: DateTime.now().microsecondsSinceEpoch,
        message: 'Hello Today Message',
        isMe: true),
    MessageModel(
        timeStamp: DateTime.now().microsecondsSinceEpoch,
        message: 'Hello Today Message',
        isMe: false),
    MessageModel(
        timeStamp: DateTime.now().microsecondsSinceEpoch,
        message: 'Hello Today Message',
        isMe: true),
    MessageModel(
        timeStamp: DateTime.now().microsecondsSinceEpoch,
        message: 'Hello Today Message',
        isMe: false),
    // adding data into model for yesterday date
    MessageModel(
        timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day - 1, 11, 30)
            .microsecondsSinceEpoch,
        message: 'Yesterday Message',
        isMe: true),
    MessageModel(
        timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day - 1, 11, 30)
            .microsecondsSinceEpoch,
        message: 'Yesterday Message',
        isMe: false),
    MessageModel(
        timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day - 1, 11, 30)
            .microsecondsSinceEpoch,
        message: 'Yesterday Message',
        isMe: true),
    MessageModel(
        timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day - 1, 14, 30)
            .microsecondsSinceEpoch,
        message: 'Yesterday Message',
        isMe: false),
    MessageModel(
        timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day - 1, 14, 30)
            .microsecondsSinceEpoch,
        message: 'Yesterday Message',
        isMe: true),
    MessageModel(
        timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day - 1, 14, 30)
            .microsecondsSinceEpoch,
        message: 'Yesterday Message',
        isMe: false),
    // adding data into model date
    MessageModel(
        timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day - 2, 14, 30)
            .microsecondsSinceEpoch,
        message: 'Some Message',
        isMe: true),
    MessageModel(
        timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day - 2, 14, 30)
            .microsecondsSinceEpoch,
        message: 'Some Message',
        isMe: false),
    MessageModel(
        timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day - 2, 14, 30)
            .microsecondsSinceEpoch,
        message: 'Some Message',
        isMe: true),
    MessageModel(
        timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day - 2, 14, 30)
            .microsecondsSinceEpoch,
        message: 'Some Message',
        isMe: false),
    MessageModel(
        timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day - 2, 14, 30)
            .microsecondsSinceEpoch,
        message: 'Some Message',
        isMe: true),

    MessageModel(
        timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day - 3, 14, 30)
            .microsecondsSinceEpoch,
        message: 'Some Message',
        isMe: false),
    MessageModel(
        timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day - 3, 14, 30)
            .microsecondsSinceEpoch,
        message: 'Some Message',
        isMe: true),
    MessageModel(
        timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day - 3, 14, 30)
            .microsecondsSinceEpoch,
        message: 'Some Message',
        isMe: false),
    MessageModel(
        timeStamp: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day - 3, 14, 30)
            .microsecondsSinceEpoch,
        message: 'Some Message',
        isMe: true),

    MessageModel(
        timeStamp: DateTime(2023, 02, 08, 15, 20).microsecondsSinceEpoch,
        message: 'Feb 8th Message ',
        isMe: true),
    MessageModel(
        timeStamp: DateTime(2023, 02, 08, 15, 20).microsecondsSinceEpoch,
        message: 'Feb 8th Message ',
        isMe: false),
    MessageModel(
        timeStamp: DateTime(2023, 02, 08, 15, 20).microsecondsSinceEpoch,
        message: 'Feb 8th Message ',
        isMe: true),
    MessageModel(
        timeStamp: DateTime(2023, 01, 20, 15, 20).microsecondsSinceEpoch,
        message: 'Jan 20 Message ',
        isMe: true),
    MessageModel(
        timeStamp: DateTime(2023, 01, 20, 15, 20).microsecondsSinceEpoch,
        message: 'Jan 20 Message ',
        isMe: false),
    MessageModel(
        timeStamp: DateTime(2023, 01, 20, 15, 20).microsecondsSinceEpoch,
        message: 'Jan 20 Message ',
        isMe: true),
    MessageModel(
        timeStamp: DateTime(2023, 01, 20, 15, 20).microsecondsSinceEpoch,
        message: 'Jan 20 Message ',
        isMe: false),
  ];

  static DateTime returnDataAndTimeFormat(String time) {
    var dt = DateTime.fromMicrosecondsSinceEpoch(int.parse(time.toString()));
    var originalDate = DateFormat('MM/dd/yyyy').format(dt);
    return DateTime(dt.year, dt.month, dt.day);
  }

  static String messageTime(String time) {
    var dt = DateTime.fromMicrosecondsSinceEpoch(int.parse(time.toString()));
    String difference = '';
    difference = DateFormat('jm').format(dt).toString();
    return difference;
  }

  static String groupMessageDateAndTime(String time) {
    var dt = DateTime.fromMicrosecondsSinceEpoch(int.parse(time.toString()));
    var originalDate = DateFormat('MM/dd/yyyy').format(dt);
    final todayDate = DateTime.now();
    final today = DateTime(todayDate.year, todayDate.month, todayDate.day);
    final yesterday =
        DateTime(todayDate.year, todayDate.month, todayDate.day - 1);
    String difference = '';
    final aDate = DateTime(dt.year, dt.month, dt.day);
    if (aDate == today) {
      difference = 'Today';
    } else if (aDate == yesterday) {
      difference = 'Yesterday';
    } else {
      difference = DateFormat.yMMMd().format(dt).toString();
    }
    return difference;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages Group'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: ListView.builder(
                controller: _scrollController,
                reverse: true,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: messageList.length,
                itemBuilder: (context, index) {
                  bool isSameDate = false;
                  String? newDate = '';
                  final DateTime date = returnDataAndTimeFormat(
                      messageList[index].timeStamp.toString());
                  if (index == 0 && messageList.length == 1) {
                    newDate = groupMessageDateAndTime(
                            messageList[index].timeStamp.toString())
                        .toString();
                  } else if (index == messageList.length - 1) {
                    newDate = groupMessageDateAndTime(
                            messageList[index].timeStamp.toString())
                        .toString();
                  } else {
                    final DateTime date = returnDataAndTimeFormat(
                        messageList[index].timeStamp.toString());
                    final DateTime prevDate = returnDataAndTimeFormat(
                        messageList[index + 1].timeStamp.toString());
                    isSameDate = date.isAtSameMomentAs(prevDate);
                    print(date.toString() +
                        ' ' +
                        prevDate.toString() +
                        ' ' +
                        isSameDate.toString());
                    newDate = isSameDate
                        ? ''
                        : groupMessageDateAndTime(
                                messageList[index - 1].timeStamp.toString())
                            .toString();
                  }
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: messageList[index].isMe
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        if (newDate.isNotEmpty)
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffE3D4EE),
                                borderRadius: BorderRadius.circular(15.sp),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.sp),
                                child: Text(newDate),
                              ),
                            ),
                          ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: CustomPaint(
                            painter: MessageBubble(
                              color: messageList[index].isMe
                                  ? Color(0xffE3D4EE)
                                  : Color(0xffDAF0F3),
                              alignment: messageList[index].isMe
                                  ? Alignment.topRight
                                  : Alignment.topLeft,
                              tail: true,
                            ),
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * .7,
                              ),
                              margin: messageList[index].isMe
                                  ? EdgeInsets.fromLTRB(7, 7, 17, 7)
                                  : EdgeInsets.fromLTRB(17, 7, 7, 7),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: messageList[index].isMe
                                        ? EdgeInsets.only(
                                            left: 4, right: 4, bottom: 10)
                                        : EdgeInsets.only(
                                            left: 4, right: 4, bottom: 10),
                                    child: Text(
                                      messageList[index].message,
                                      textAlign: TextAlign.left,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline5!
                                          .copyWith(
                                            fontSize: 15,
                                            color: messageList[index].isMe
                                                ? Color(0xff705982)
                                                : Color(0xff677D81),
                                          ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Text(
                                      messageTime(messageList[index]
                                              .timeStamp
                                              .toString())
                                          .toString(),
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
