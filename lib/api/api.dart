import 'package:http/http.dart' as http;
import 'package:read_cafe/api/bookClass.dart';
import 'dart:convert';

Future<List<BookClass>> fetchBooks() async {
  final response =
      await http.get(Uri.parse('https://read-cafe.herokuapp.com/books/'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    Iterable list = jsonDecode(response.body);
    List<BookClass> books =
        list.map((model) => BookClass.fromJson(model)).toList();

    return books;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to get books');
  }
}
