import 'package:apiintegration_sample1/models/product_models.dart';
import 'package:http/http.dart' as http;
class HttpService {
  
  static Future<Object> fetchProducts() async {
    var response = await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200){
      var data = response.body;
      return productsModelFromJson(data);
    }else{
      var data = response.body;
      return productsModelFromJson(data);
    }
  }
}