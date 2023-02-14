import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class Back4App {
  static Future<void> init() async {
    const keyApplicationId = 'lRrPYB3YFmX0gQh4O7Q9lYQE847bhn6UR8mUfn9a';
    const keyClientId = 'YJ8gvfiSVnnObflCx9aikCrECeMtZXfBZD9mVavd';
    const keyParseServerUrl = 'https://parseapi.back4app.com';
    await Parse().initialize(keyApplicationId, keyParseServerUrl,
        clientKey: keyClientId, autoSendSessionId: true);
  }
}
