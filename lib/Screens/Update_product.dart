import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store/Widgets/custom_Button.dart';
import 'package:store/Widgets/custom_textField.dart';
import 'package:store/helper/ShowSnakeBar.dart';
import 'package:store/model/model_Products.dart';
import 'package:store/services/updateProduct.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});
  static String id = 'UpdatePage';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName, desc, image;

  String? price;
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    ModelProduct product =
        ModalRoute.of(context)!.settings.arguments as ModelProduct;
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Update Product',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                TextFieldWidget(
                  onchanged: (data) {
                    productName = data;
                  },
                  hintText: 'Update Product',
                ),
                SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                  onchanged: (data) {
                    desc = data;
                  },
                  hintText: 'Description',
                ),
                SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                  onchanged: (data) {
                    price = data;
                  },
                  hintText: 'Price',
                  inputType: TextInputType.number,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                  onchanged: (data) {
                    image = data;
                  },
                  hintText: 'Image',
                ),
                SizedBox(
                  height: 70,
                ),
                ButtonWidget(
                    onTap: ()async {
                      isloading = true;
                      setState(() {});
                      try {
                      await Update(product);
                        showSnakbar(context, 'Update Success!.');
                      } on Exception catch (e) {
                        print(e.toString());
                      }
                      isloading = false;
                      setState(() {});
                    },
                    text: 'Update'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> Update(ModelProduct product)async {
  await UpdateProduct().updatePro(
    id: product.id,
        title: productName==null?product.title:productName!,
        price:price==null?product.price.toString():price!,
        dec: desc==null?product.description:desc!,
        image: image==null?product.image:image!,
        catogrey: product.category);
  }
}
