import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class Pref {
  static late Box box;
  static void initialize() async {
    Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
    box = Hive.box(name: 'myData');
  }

  static bool get showOnboarding =>
      box.get('showOnboarding', defaultValue: true);
  static set showOnboarding(bool v) => box.put('showOnboarding', v);
}
