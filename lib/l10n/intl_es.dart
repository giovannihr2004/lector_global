class AppLocalizations {
  static const _localizedValues = <String, String>{
    'welcome': 'Bienvenido a Lector Global',
    'start_button': 'Comenzar',
    'description': 'El viaje comienza con una página',
  };

  String? translate(String key) {
    return _localizedValues[key];
  }
}
