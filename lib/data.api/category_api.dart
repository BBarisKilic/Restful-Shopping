import 'package:http/http.dart' as http;

class categoryApi {
  static Future getCategories() {
    return http.get("http://10.0.2.2:3000/categories");
  }
}
