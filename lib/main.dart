import 'package:flutter/material.dart';
import 'package:uni_links/uni_links.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _latestLink = "";

  @override
  void initState() {
    super.initState();
    initUniLinks();
  }

  initUniLinks() async {
    try {
      String? initialLink = await getInitialLink();
      if (initialLink != null) {
        setState(() {
          _latestLink = initialLink;
        });
      }
    } catch (e) {
      //
    }

    linkStream.listen((String? link) {
      if (link != null) {
        setState(() {
          _latestLink = link;
        });
      }
    }, onError: (err) {
      //
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Third Party App Simulator'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'receive:',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                _latestLink,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
