import 'package:flutter/material.dart';
import 'suggestions_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DadataSuggestions Demo'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Paste Dadata API token and press enter",
            ),
            onSubmitted: (string) {
              Navigator.of(context).push(
                PageRouteBuilder(
                  opaque: false,
                  pageBuilder: (BuildContext context, a, b) {
                    return SuggestionsScreen(token: string);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
