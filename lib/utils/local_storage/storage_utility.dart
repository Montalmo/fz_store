import 'package:shared_preferences/shared_preferences.dart';

class FZLocalStorage {
  const FZLocalStorage._();

  Future<void> saveData<T>(String key, T value) async {
    var prefs = await SharedPreferences.getInstance();
    switch (value.runtimeType) {
      case int:
        await prefs.setInt(key, value as int);
      case double:
        await prefs.setDouble(key, value as double);
      case bool:
        await prefs.setBool(key, value as bool);
      case String:
        await prefs.setString(key, value as String);
      default:
        await prefs.setStringList(key, value as List<String>);
    }
  }

 
}
