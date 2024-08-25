import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static const storage = FlutterSecureStorage();
  static const keyTheme = 'theme';

  static Future setTheme(String theme) async {
    await storage.write(key: keyTheme, value: theme);
  }

  static Future<String?> getTheme() async {
    final value = await storage.read(key: keyTheme);
    return value;
  }

  static Future<void> clear() async {
    await storage.delete(key: keyTheme);
  }

}