
import 'package:store/helper/api.dart';

class AllCatogretService {
  Future<List<dynamic>> getCatogrey() async {
    List<dynamic> data =await
        Api().get(url: 'https://fakestoreapi.com/products/categories');
    return data;
  }
}
