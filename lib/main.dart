import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Test Flutter Layout',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      // A widget which will be started on application startup
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var s = 'Hello Flutter';
    var widget = Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlueBox(),
                  Text('XXXXX'),
                ],
              )),
            ),
            Expanded(
              flex: 1,
              child: Center(
                  child: ElevatedButton(
                onPressed: () {},
                child: Text('START'),
              )),
            ),
          ],
        ),
      ),
    );

    return widget;
  }
}

class BlueBox extends StatelessWidget {
  const BlueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class BlueBox100 extends StatelessWidget {
  const BlueBox100({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.pink,
        border: Border.all(),
      ),
    );
  }
}
