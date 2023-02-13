import 'dart:io';
import 'package:path_provider/path_provider.dart';

class SADFile {
  String filename = "";

  SADFile({required this.filename});

  File _getFile(String path, String filename) => File('$path/$filename');

  Future<String> read() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = _getFile(directory.path, filename);

    if (await file.exists()) {
      return await file.readAsString();
    } else {
      return "";
    }
  }

  void write(String raw) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = _getFile(directory.path, filename);
    await file.writeAsString(raw);
  }
}
