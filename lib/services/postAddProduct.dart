import 'package:store/helper/api.dart';
import 'package:store/model/model_Products.dart';

class AddProduct {
  Future<ModelProduct> addpro({
    required String title,
    required String price,
    required String dec,
    required String image,
    required String catogrey,
  }) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': dec,
      'image': image,
      'category': catogrey,
    });
    return ModelProduct.fromJson(data);
  }
}
