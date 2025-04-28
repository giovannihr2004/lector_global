class AppLocalizations {
  static const _localizedValues = <String, String>{
    'welcome': 'Welcome to Lector Global',
    'start_button': 'Start',
    'description': 'The journey begins with a page',
  };

  String? translate(String key) {
    return _localizedValues[key];
  }
}
