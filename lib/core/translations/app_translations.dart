import 'package:get/get.dart';
import 'en_us.dart';
import 'pt_br.dart';
import 'es_es.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUs,
        'pt_BR': ptBr,
        'es_ES': esEs,
      };
}
