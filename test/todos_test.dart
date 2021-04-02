import 'package:flutter_dart_testing/todos.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

class HTTPMock extends Mock implements http.Client {}

void main() {
  final url = 'myonlineapi.com';

  test('Returns JSON in case of success', () async {
    final todo = Todos();
    final HTTPMock mock = HTTPMock();
    final fakeJson = '[{"id": 1, "desc": "Test!"}]';

    when(mock.get(Uri.https(url, 'get/todos')).whenComplete(() {
      return http.Response(fakeJson, 200);
    }));

    expect(
      await todo.getJson(mock),
      const TypeMatcher<String>()
    );
  });
}