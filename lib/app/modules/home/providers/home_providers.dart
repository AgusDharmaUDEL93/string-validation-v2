import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:string_validation_v2/app/models/words.dart';

Future<Words> postWords(String data) async {
  Uri url = Uri.parse("https://final-project-tbo-be.vercel.app/parsing");
  var body = {'string': data};
  var header = {'Content-Type': 'application/json'};
  final respons = await http.post(url, body: jsonEncode(body), headers: header);
  final words = wordsFromJson(respons.body);
  return words;
}
