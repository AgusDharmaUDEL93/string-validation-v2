import 'package:http/http.dart' as http;
import 'package:string_validation_v2/app/models/rules.dart';

Future<Rules> getRules() async {
  final response = await http
      .get(Uri.parse("https://final-project-tbo-be.vercel.app/rules"));
  if (response.statusCode == 200) {
    return rulesFromJson(response.body);
  } else {
    throw Exception("Failed to load data");
  }
}
