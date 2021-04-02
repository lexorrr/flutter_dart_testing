import 'package:http/http.dart' as http;

class Todos {
  final _source = 'myonlineapi.com';

  Future<String> getJson(http.Client client) async {
    final response = await client.get(Uri.https(_source, 'get/todos'));

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return '{}';
    }
  }
}