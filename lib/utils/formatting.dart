class Formatting {
  static String phoneNumber(String? string) {
    if (string == null) {
      return '';
    }

    string = string
        .replaceAll(RegExp(r'[\s-\(\)]'), '')
        .padLeft(11, '0')
        .replaceFirstMapped(
      RegExp(r'(\d{2})(\d{5})(\d{4})$'),
      (match) {
        final one = match.group(1);
        final two = match.group(2);
        final three = match.group(3);

        return '($one) $two-$three';
      },
    );

    return string;
  }
}
