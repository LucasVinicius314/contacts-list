import 'package:contacts_list/models/contact.dart';
import 'package:contacts_list/screens/chat.dart';
import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  Contacts({Key? key}) : super(key: key);

  static const route = '/';

  // TODO: fix

  final _contacts = [
    Contact(
      name: 'Carlos',
      picture:
          'https://i.pinimg.com/originals/c3/51/18/c3511874093854d317bc7c3927132b7b.jpg',
      phoneNumber: '43432',
      messages: [
        'Something',
      ],
    ),
    Contact(
      name: 'Carlos',
      picture:
          'https://i.pinimg.com/originals/c3/51/18/c3511874093854d317bc7c3927132b7b.jpg',
      phoneNumber: '43432',
      messages: [
        'Something',
      ],
    ),
    Contact(
      name: 'Carlos',
      picture:
          'https://i.pinimg.com/originals/c3/51/18/c3511874093854d317bc7c3927132b7b.jpg',
      phoneNumber: '43432',
      messages: [
        'Something',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts List'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add new contact',
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: ThemeData.estimateBrightnessForColor(
                    Theme.of(context).colorScheme.primary) ==
                Brightness.light
            ? Colors.black
            : Colors.white,
        onPressed: () {
          // TODO: fix
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: _contacts.length,
        separatorBuilder: (context, index) {
          return const Divider(indent: 72, height: 0);
        },
        itemBuilder: (context, index) {
          final contact = _contacts[index];

          return ListTile(
            onTap: () {
              // TODO: fix

              Navigator.of(context).pushNamed(Chat.route, arguments: contact);
            },
            title: Text(contact.name),
            subtitle: Text(
              contact.messages.isNotEmpty ? contact.messages.first : '',
            ),
            leading: Container(
              width: 48,
              height: 48,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48),
              ),
              child: Align(
                child: Image.network(contact.picture),
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.phone,
                  size: 18,
                  color: Colors.teal,
                ),
                const SizedBox(width: 8),
                Text(contact.phoneNumber),
              ],
            ),
          );
        },
      ),
    );
  }
}
