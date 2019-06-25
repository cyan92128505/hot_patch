import 'package:path_provider/path_provider.dart';

String _appVersion = '1';

class DynamicPatcher {
  getAssets() async {
    print(await DynamicPatcher._localPath);
  }

  static Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }
}
