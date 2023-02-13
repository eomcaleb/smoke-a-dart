import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';

class FileManager {
  String filename = "";

  FileManager({required this.filename});

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

  void writeJSON(String raw) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = _getFile(directory.path, filename);

    if (await file.exists()) {
      await file.writeAsString(json.encode(raw));
    }
  }

  void writeRaw(String raw) async {
    final directory = await getApplicationDocumentsDirectory();
    final file = _getFile(directory.path, filename);

    if (await file.exists()) {
      await file.writeAsString(raw);
    }
  }
}
