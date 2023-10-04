import 'package:store/helper/api.dart';
import 'package:store/model/model_Products.dart';

class UpdateProduct {
  Future<ModelProduct> updatePro({
    required String title,
    required String price,
    required String dec,
    required String image,
    required int id,
    required String catogrey,
  }) async {
    print('product id =$id');
    Map<String, dynamic> data =
        await Api().put(url:'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': dec,
      'image': image,
      'category': catogrey,
    });
    return ModelProduct.fromJson(data);
  }
}
