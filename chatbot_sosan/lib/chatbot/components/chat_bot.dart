import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

// ************************* this file using package webview_flutter for display the chatbot in the application
//************sosan. you can call this component directly in the home of any user and wrap this in floatting actionbutto */

class ChatBotSOSAN extends StatefulWidget {
  @override
  State<ChatBotSOSAN> createState() => _ChatBotSOSANState();
}

class _ChatBotSOSANState extends State<ChatBotSOSAN> {
  late final WebViewController _controller;

  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(
          'https://app.thinkstack.ai/bot/index.html?chatbot_id=67af21f96355aa04112f29f0'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "SO",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "SAN",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: " BOT",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 8),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                  // width: 22,
                  )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 22),
            child: Row(
              children: [
                Icon(
                  Icons.dark_mode,
                  color: Colors.blue,
                ),
                SizedBox(
                    //width: 20,
                    )
              ],
            ),
          )
        ],
      ),
      body: Container(
          margin: EdgeInsets.only(top: 00),
          child: WebViewWidget(controller: _controller)),
    );
  }
}
