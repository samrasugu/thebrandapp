import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:thebrandapp/global_variables.dart';

Future<Map<String, dynamic>> fetchData() async {
  http.Response response = await http.get(
    Uri.parse('$endpointUrl/prompt?page=0&mode=home'),
  );

  if (response.statusCode == 200) {
    final responseData = json.decode(response.body);
    return responseData;
  } else {
    throw Exception('Could not fetch data');
  }
}
