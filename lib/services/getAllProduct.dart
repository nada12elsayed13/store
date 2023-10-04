
import 'package:store/helper/api.dart';
import 'package:store/model/model_Products.dart';

class AllProductsService {
  Future<List<ModelProduct>> getallProduct() async {
  List<dynamic> data =await Api().get(url: 'https://fakestoreapi.com/products');
  List<ModelProduct> listProduct = [];
  for (int i = 0; i < data.length; i++) {
    listProduct.add(ModelProduct.fromJson(data[i]));
  }
  return listProduct;

  }
}
