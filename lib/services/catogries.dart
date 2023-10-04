
import 'package:store/helper/api.dart';
import 'package:store/model/model_Products.dart';

class CatogriesServic {
  Future<List<ModelProduct>> getCatogries(
      {required String catogreyName}) async {
      List<dynamic> data =await Api().get(url: 'https://fakestoreapi.com/products/category/$catogreyName');
      List<ModelProduct> listProduct = [];
      for (int i = 0; i < data.length; i++) {
        listProduct.add(ModelProduct.fromJson(data[i]));
      }
      return listProduct;
  }
}
