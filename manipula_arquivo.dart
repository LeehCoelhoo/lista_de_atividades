import 'dart:io';

import 'dart:convert';

class ManipulaArquivo{
  Future<File> _getArquivo() async {
    final directory = await getApplicationDocumentsDirectory();
    return File("${directory.path}/atividades_p.json");
  }

  Future<String?> readAtividade() async {
    try {
      final file = await _getArquivo();
      return file.readAsString();
    } catch (e) {
      return null;
    }
  }

  Future<File> saveAtividade(List atividadeList) async {
    String data = json.encode(atividadeList);
    final file = await _getArquivo();
    return file.writeAsString(data);
  }

  getApplicationDocumentsDirectory() {}

}