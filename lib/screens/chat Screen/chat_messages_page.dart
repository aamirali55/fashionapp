import 'package:fashionapp/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ChatMessagesPage extends StatefulWidget {
  final String chatName;

  const ChatMessagesPage({super.key, required this.chatName});

  @override
  State<ChatMessagesPage> createState() => _ChatMessagesPageState();
}

class _ChatMessagesPageState extends State<ChatMessagesPage> {
  final List<Map<String, String>> messages = [
    {
      'sender': 'John Doe',
      'message': 'Hey, how are you?',
      'time': '10:30 AM',
    },
    {
      'sender': 'You',
      'message': 'I am good, thanks! How about you?',
      'time': '10:32 AM',
    },
    {
      'sender': 'John Doe',
      'message': 'I am doing well. Just wanted to check in.',
      'time': '10:35 AM',
    },
    {
      'sender': 'You',
      'message': 'Glad to hear that!',
      'time': '10:37 AM',
    },
    
  ];

  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/images/product_1.PNG'), // Placeholder image
              radius: 20,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatName,
                  style:const  TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               const  Text(
                  'Online',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // Handle the three-dot menu press
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                final isMe = message['sender'] == 'You';

                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment:
                        isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                    children: [
                      if (!isMe) ...[
                       const  CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/product_1.PNG'), // Placeholder image
                          radius: 20,
                        ),
                        const SizedBox(width: 10),
                      ],
                      Expanded(
                        child: Column(
                          crossAxisAlignment: isMe
                              ? CrossAxisAlignment.end
                              : CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: isMe
                                    ? AppColors.primaryColor
                                    : AppColors.backgorndPrimaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                message['message']!,
                                style: TextStyle(
                                    color: isMe
                                        ? AppColors.backgorndPrimaryColor
                                        : Colors.black87),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              message['sender']!,
                              style: TextStyle(
                                color: isMe
                                    ? AppColors.backgorndPrimaryColor
                                    : Colors.black54,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              message['time']!,
                              style: TextStyle(
                                color: isMe
                                    ? AppColors.backgorndPrimaryColor
                                    : Colors.black54,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                      hintStyle: TextStyle(color: AppColors.primaryColor),
                      filled: true,
                      fillColor: AppColors.backgorndPrimaryColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: AppColors.primaryColor,
                          width: 2,
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                   
                      });
                    },
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: Icon(Icons.send, color: AppColors.primaryColor),
                  onPressed: () {
                
                    _messageController
                        .clear(); 
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
