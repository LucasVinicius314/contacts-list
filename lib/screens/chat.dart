import 'package:contacts_list/models/contact.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  static const route = '/chat';

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  Contact? _contact;

  void _initContact() {
    final contact = ModalRoute.of(context)?.settings.arguments as Contact?;

    setState(() {
      _contact = contact;
    });
  }

  @override
  void initState() {
    super.initState();

    Future(() {
      _initContact();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Builder(
          builder: (context) {
            final contact = _contact;

            if (contact == null) {
              return const CircularProgressIndicator();
            }

            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 42,
                  height: 42,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(42),
                  ),
                  child: Image.network(contact.picture),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(contact.name),
                    Text(
                      contact.phoneNumber,
                      style: Theme.of(context).textTheme.caption?.copyWith(
                            // TODO: fix, helper
                            color: ThemeData.estimateBrightnessForColor(
                                        Theme.of(context)
                                            .colorScheme
                                            .primary) ==
                                    Brightness.light
                                ? Colors.black87
                                : Colors.white70,
                          ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // TODO: fix
          Expanded(
            child: Builder(
              builder: (context) {
                return Container();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Chat'),
          ),
        ],
      ),
    );
  }
}
