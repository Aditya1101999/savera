import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Savera',
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 32.0),
                child: Row(
                  children: [
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        'assets/images/up.png',
                        height: 150.0,
                        width: 150.0,
                      ),
                      onTap: () {
                        setState(() {
                          message = 'Good touch';
                        });
                      },
                    ),
                    GestureDetector(
                      child: Image.asset(
                        'assets/images/down.png',
                        height: 150.0,
                        width: 150.0,
                      ),
                      onTap: () {
                        setState(() {
                          message = 'Bad touch';
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 32.0),
                child: Row(
                  children: [
                    const SizedBox(width: 32.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Follow us on social media',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          children: const [
                            Icon(Icons.facebook),
                            SizedBox(width: 8.0),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.info_outline),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 32.0),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 32.0,
            left: 32.0,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.login),
              label: Text('Login'),
            ),
          ),
          Positioned(
            top: 32.0,
            right: 32.0,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.connect_without_contact),
              label: Text('Connect'),
            ),
          ),
        ],
      ),
    );
  }
}