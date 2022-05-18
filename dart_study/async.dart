import 'package:http/http.dart' as http;

main() async {
  var url = Uri.parse('https://www.baidu.com/');
  var response =
      await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  // print(await http.read(Uri.parse('https://example.com/foobar.txt')));
}
