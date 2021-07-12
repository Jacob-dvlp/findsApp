import 'package:http/http.dart' as http;
import 'package:mobile/endpoints/urls.dart';

class Conection extends URL {
  http.Response? response;
  var jsonResponse;
}
