class HelperFunctions {
  //

  static String removeSpecialCharacters(String input) {
    List<String> characters = input.split('');

    List<String> filteredCharacters = characters.where((char) {
      final alphanumeric = RegExp(r'[a-zA-Z0-9]');
      return alphanumeric.hasMatch(char);
    }).toList();

    return filteredCharacters.join('');
  }
}
