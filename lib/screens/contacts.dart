import 'package:contacts_list/models/contact.dart';
import 'package:contacts_list/screens/chat.dart';
import 'package:contacts_list/utils/utils.dart';
import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  static const route = '/';

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List<Contact> _contacts = [
    Contact(
      name: Utils.randomName(),
      picture: 'https://picsum.photos/100/100?random=${Utils.randomInt()}',
      phoneNumber: Utils.randomInt().toStringAsFixed(0),
      messages: [
        'Exercitation proident labore dolor eiusmod non sit ad exercitation nostrud enim.',
        'Sint sit sunt duis proident dolore qui elit incididunt esse do nostrud dolor id.',
        'Sint elit anim minim ea fugiat officia fugiat consectetur labore minim amet dolore voluptate.',
        'Veniam do anim sint ad anim nisi commodo amet duis labore.',
        'Deserunt et nulla aute quis elit velit cupidatat laborum incididunt ipsum est.',
        'Excepteur aute adipisicing qui exercitation.',
      ],
    ),
    Contact(
      name: Utils.randomName(),
      picture: 'https://picsum.photos/100/100?random=${Utils.randomInt()}',
      phoneNumber: Utils.randomInt().toStringAsFixed(0),
      messages: [
        'Something',
      ],
    ),
    Contact(
      name: Utils.randomName(),
      picture: 'https://picsum.photos/100/100?random=${Utils.randomInt()}',
      phoneNumber: Utils.randomInt().toStringAsFixed(0),
      messages: [
        'Officia laboris ea sit cupidatat pariatur ex aliquip officia non. Occaecat veniam nulla irure dolore est amet aliqua eu ut incididunt in laboris occaecat in. Quis sit ut quis veniam non in ad non irure in esse anim officia nostrud. Officia culpa laboris sunt veniam nulla laborum. Ex pariatur fugiat laboris voluptate sint. Eiusmod officia proident cupidatat eu adipisicing sint adipisicing cupidatat incididunt culpa cupidatat ad aute. Duis elit velit esse commodo non laborum nostrud exercitation commodo laboris sit.',
      ],
    ),
    Contact(
      name: Utils.randomName(),
      picture: 'https://picsum.photos/100/100?random=${Utils.randomInt()}',
      phoneNumber: Utils.randomInt().toStringAsFixed(0),
      messages: [],
    ),
    Contact(
      name: Utils.randomName(),
      picture: 'https://picsum.photos/100/100?random=${Utils.randomInt()}',
      phoneNumber: Utils.randomInt().toStringAsFixed(0),
      messages: [
        'Et ipsum proident ad adipisicing consectetur consectetur ipsum minim occaecat adipisicing. Elit fugiat sint commodo magna adipisicing. Id irure fugiat est occaecat deserunt aliquip.',
        'Adipisicing veniam reprehenderit minim laborum anim. Cupidatat aute mollit in consequat nulla in incididunt tempor ad ad deserunt labore. Amet deserunt amet dolore excepteur. Consectetur labore exercitation aliquip ea est consequat. Proident velit ut adipisicing laborum aliqua consequat quis laborum ex culpa fugiat. Aute nostrud duis tempor aute eiusmod voluptate aliquip in sit.',
        'Pariatur officia duis eu veniam est. Ea minim do ex magna officia magna aliquip do minim elit aute ut. Ad cillum nostrud consectetur labore consectetur.',
        'Aliqua sunt duis culpa reprehenderit duis enim sit deserunt. Ut officia sit cillum exercitation ad consectetur culpa qui ipsum ipsum nostrud. Excepteur et veniam ut incididunt eiusmod mollit eu ullamco incididunt duis esse nostrud aute sit. Voluptate esse aliqua eu anim nisi enim voluptate irure dolore non.',
        'Pariatur eiusmod nulla anim qui cupidatat nostrud consequat ex tempor. Reprehenderit quis pariatur nulla est enim labore excepteur ipsum. Ea culpa ea esse magna labore et. Nostrud velit cillum fugiat velit enim esse exercitation eiusmod ipsum nostrud. In adipisicing mollit laboris eiusmod officia eiusmod qui excepteur magna. Cillum nostrud anim exercitation consequat ea.',
        'Et laborum ad cupidatat in labore ullamco deserunt ipsum amet sint cupidatat. Sint veniam culpa velit et do quis. Esse aliquip cupidatat in non ad minim et est enim incididunt sunt consequat ullamco. Aliquip exercitation duis magna id amet nulla ut cillum ut exercitation excepteur sit. Laborum cillum esse laboris deserunt enim duis consectetur non adipisicing tempor consequat proident ipsum. Laboris deserunt tempor incididunt ad mollit laboris commodo in.',
        'Nulla quis esse incididunt aute ut Lorem aliqua pariatur magna sunt id irure commodo. Nulla quis aliquip Lorem ex nulla dolore labore velit. Cillum incididunt velit exercitation cillum enim deserunt commodo laborum. Aliqua veniam labore excepteur excepteur pariatur aute excepteur dolore cupidatat occaecat. Amet quis officia veniam minim ad aliqua qui sit consectetur incididunt enim consectetur.',
        'Est esse incididunt commodo deserunt et labore consectetur duis duis ut esse consequat eu. Officia dolor aliqua deserunt aliquip officia qui. Nisi excepteur tempor adipisicing et est cillum fugiat culpa ipsum occaecat exercitation do labore. In id et adipisicing ea magna labore voluptate. Consectetur do ea Lorem sunt ad eu. Consectetur laborum ea dolore id voluptate do ipsum est magna.',
        'Est culpa laboris anim sunt aliqua incididunt cupidatat. Voluptate qui culpa dolor adipisicing exercitation occaecat occaecat incididunt fugiat laborum duis exercitation. Aliquip id commodo et laborum id duis voluptate labore. Culpa consectetur cupidatat et sunt esse qui id incididunt do qui exercitation proident sint. Adipisicing exercitation enim ut aliqua labore anim.',
        'Occaecat dolor veniam reprehenderit reprehenderit incididunt excepteur ex consectetur occaecat adipisicing. Excepteur cupidatat culpa enim aute et labore ex esse deserunt nulla est deserunt. Occaecat amet incididunt mollit reprehenderit. Proident dolore duis duis dolore magna consectetur irure ea veniam dolore mollit fugiat esse laboris. Deserunt eu cupidatat esse adipisicing ea aliquip laborum velit dolore enim labore enim. Dolore sint qui commodo cupidatat eiusmod eiusmod sint pariatur qui exercitation esse laboris cupidatat. Amet ut laborum aliqua mollit velit reprehenderit cupidatat culpa irure.',
        'Dolore non nulla aliquip occaecat duis nostrud voluptate id nisi. Deserunt deserunt occaecat ullamco commodo non. Dolor ut amet ipsum deserunt nulla quis dolor cillum consectetur. Nostrud mollit ipsum esse sunt magna sunt enim commodo sit duis laborum quis laborum enim. Anim deserunt exercitation in occaecat pariatur qui irure ea ea. Excepteur veniam enim anim Lorem eu eu.',
        'Culpa sit magna irure proident commodo. Anim aute velit culpa ex sint consectetur ut labore aliqua cillum aute est. Nulla aliquip veniam et ut officia sit nulla sunt nisi excepteur aute non. Dolor id proident consequat fugiat.',
        'Nostrud est ut ad mollit laborum reprehenderit. Elit velit in eiusmod exercitation esse tempor adipisicing voluptate veniam excepteur non nisi culpa cillum. Veniam ipsum proident enim pariatur. Labore ex pariatur in amet elit irure fugiat id minim do excepteur eiusmod.',
      ],
    ),
    ...List.generate(10, (index) {
      return Contact(
        name: Utils.randomName(),
        picture: 'https://picsum.photos/100/100?random=${Utils.randomInt()}',
        phoneNumber: Utils.randomInt().toStringAsFixed(0),
        messages: [],
      );
    })
  ];

  Future<void> _addContact() async {
    final newContact = Contact(
      name: Utils.randomName(),
      picture: 'https://picsum.photos/100/100?random=${Utils.randomInt()}',
      phoneNumber: Utils.randomInt().toStringAsFixed(0),
      messages: [],
    );

    setState(() {
      _contacts = [..._contacts, newContact];
    });
  }

  Widget _getBody() {
    if (_contacts.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Text(
            'No contacts yet - try adding a new one!',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      );
    }

    return ListView.separated(
      itemCount: _contacts.length,
      padding: const EdgeInsets.only(bottom: 80),
      separatorBuilder: (context, index) {
        return const Divider(indent: 72, height: 0);
      },
      itemBuilder: (context, index) {
        final contact = _contacts[index];

        return ListTile(
          onTap: () async {
            await _viewContact(contact: contact);
          },
          title: Text(contact.name),
          subtitle: Text(
            contact.messages.isNotEmpty ? contact.messages.first : '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          leading: Container(
            width: 48,
            height: 48,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
            ),
            child: Align(child: Image.network(contact.picture)),
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
              Text(contact.formattedPhoneNumber),
            ],
          ),
        );
      },
    );
  }

  Future<void> _viewContact({required Contact contact}) async {
    final shouldDelete =
        await Navigator.of(context).pushNamed(Chat.route, arguments: contact);

    if (shouldDelete == true) {
      _contacts.remove(contact);

      setState(() {
        _contacts = [..._contacts];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contacts List')),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add new contact',
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: ThemeData.estimateBrightnessForColor(
                    Theme.of(context).colorScheme.primary) ==
                Brightness.light
            ? Colors.black
            : Colors.white,
        onPressed: _addContact,
        child: const Icon(Icons.add),
      ),
      body: _getBody(),
    );
  }
}
