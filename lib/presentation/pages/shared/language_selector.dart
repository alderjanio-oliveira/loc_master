import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageSelector extends StatefulWidget {
  const LanguageSelector({super.key});

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  final languages = {
    'English': const Locale('en', 'US'),
    'Português': const Locale('pt', 'BR'),
    'Español': const Locale('es', 'ES'),
  };

  String currentLang = 'English';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: currentLang,
      items: languages.keys
          .map((lang) => DropdownMenuItem<String>(
                value: lang,
                child: Text(lang),
              ))
          .toList(),
      onChanged: (String? value) {
        if (value != null) {
          setState(() => currentLang = value);
          Get.updateLocale(languages[value]!);
        }
      },
    );
  }
}
