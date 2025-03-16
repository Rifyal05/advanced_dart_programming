import 'package:http/http.dart' as http;


void main() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      print('Response body: ${response.body}');
    } else {
      print('Gagal mengambil data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Terjadi error: $e');
  }
}
