import 'package:contacts_list/models/contact.dart';
import 'package:contacts_list/utils/utils.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  static const route = '/chat';

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  Contact? _contact;

  final _focusNode = FocusNode();
  final _controller = TextEditingController();

  void _initContact() {
    final contact = ModalRoute.of(context)?.settings.arguments as Contact?;

    setState(() {
      _contact = contact;
    });
  }

  Future<void> _notice() async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Notice'),
          content: const Text('This won\'t work, it\'s just an example.'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).maybePop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _removeContact() async {
    await Navigator.of(context).maybePop(true);
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
                      contact.formattedPhoneNumber,
                      style: Theme.of(context).textTheme.caption?.copyWith(
                            color: Utils.isColorDark(
                              Theme.of(context).colorScheme.primary,
                            )
                                ? Colors.white70
                                : Colors.black87,
                          ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
        actions: [
          PopupMenuButton<int>(
            tooltip: 'More options',
            constraints: const BoxConstraints(
              minHeight: kMinInteractiveDimension,
              minWidth: kMinInteractiveDimension,
            ),
            onSelected: (value) {
              if (value == 0) {
                _removeContact();
              }
            },
            itemBuilder: (context) {
              return const [
                PopupMenuItem(
                  value: 0,
                  child: Text('Remove contact'),
                ),
              ];
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Icon(Icons.more_vert),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: Colors.grey.shade200,
                child: Builder(
                  builder: (context) {
                    final contact = _contact;

                    if (contact == null) {
                      return Container();
                    }

                    final messages = contact.messages;

                    if (messages.isEmpty) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 24,
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.yellow.shade100,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                            child: Text(
                              'There are no messages yet - try sending a new one!',
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(color: Colors.brown.shade900),
                            ),
                          ),
                        ),
                      );
                    }

                    return ListView.builder(
                      reverse: true,
                      itemCount: messages.length,
                      padding: const EdgeInsets.only(top: 16),
                      itemBuilder: (context, index) {
                        final message = messages[index];

                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            right: 64,
                            bottom: 16,
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Material(
                              elevation: 1,
                              color: Theme.of(context).scaffoldBackgroundColor,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Text(message),
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 12,
                right: 12,
                bottom: 12,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      maxLines: 4,
                      minLines: 1,
                      focusNode: _focusNode,
                      controller: _controller,
                      decoration: const InputDecoration(
                        isDense: true,
                        hintText: 'Type a new message...',
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  IconButton(
                    tooltip: 'Send',
                    splashRadius: 24,
                    onPressed: _notice,
                    icon: Icon(
                      Icons.send,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
