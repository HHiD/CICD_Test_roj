import 'package:flutter/material.dart';

class WelcomPage extends StatefulWidget {
  const WelcomPage({super.key});

  static String routeName = "WelcomPage";

  @override
  WelcomPageState createState() {
    return WelcomPageState();
  }
}

class WelcomPageState extends State<WelcomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is A welcome page'),
      ),
      body: Column(
        children: [
          const Text('data'),
          TextButton(
              onPressed: () {
                print('Clicked');
              },
              child: const Text('Click'))
        ],
      ),
    );
  }
}
