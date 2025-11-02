import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const BroadcastorListener());
}

class BroadcastorListener extends StatelessWidget {
  const BroadcastorListener({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Broadcastor Listener',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      ),
      home: const ListenerHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ListenerHome extends StatefulWidget {
  const ListenerHome({super.key});

  @override
  State<ListenerHome> createState() => _ListenerHomeState();
}

class _ListenerHomeState extends State<ListenerHome> {
  late WebViewController _controller;

  final String youtubeUrl =
      'https://www.youtube.com/embed/live_stream?channel=UCXXXXXX'; // <-- replace with your channel ID

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Broadcastor Listener'),
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: youtubeUrl,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          _controller = controller;
        },
      ),
    );
  }
}
