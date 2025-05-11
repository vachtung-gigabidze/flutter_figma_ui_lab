import 'package:flutter_figma_template/weather/ff_you_awesome/index.dart';

class YouAwesomeProvider {
  Future<dynamic> fetchAsync(String? id) async {
    return Future.value(<YouAwesomeModel>[YouAwesomeModel(name: "name1")]);
  }

  Future<dynamic> addMore(List<YouAwesomeModel>? items) async {
    return Future.value(<YouAwesomeModel>[]);
  }
}
