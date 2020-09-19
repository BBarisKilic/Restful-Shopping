import 'package:http/http.dart' as http;

class ProductApi {
  static Future getCategories() {
    return http.get("http://10.0.2.2:3000/products");
  }

  static Future getCaregoriesByCategoryId(int categoryId) {
    return http.get("http://10.0.2.2:3000/products?categoryId=$categoryId");
  }
}
