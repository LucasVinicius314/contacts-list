import 'package:contacts_list/screens/chat.dart';
import 'package:contacts_list/screens/contacts.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.teal,
      title: 'Contacts list',
      theme: ThemeData.light().copyWith(
        colorScheme: const ColorScheme.light().copyWith(primary: Colors.teal),
      ),
      routes: {
        '/': (context) => Contacts(),
        '/chat': (context) => const Chat(),
      },
    );
  }
}
