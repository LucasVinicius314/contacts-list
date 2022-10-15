import 'package:contacts_list/utils/formatting.dart';

class Contact {
  const Contact({
    required this.name,
    required this.picture,
    required this.phoneNumber,
    required this.messages,
  });

  final String name;
  final String picture;
  final String phoneNumber;
  final List<String> messages;

  String get formattedPhoneNumber => Formatting.phoneNumber(phoneNumber);
}
