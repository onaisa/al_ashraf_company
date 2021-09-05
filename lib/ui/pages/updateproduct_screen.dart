import 'package:alashraf/models/productModel.dart';
import 'package:alashraf/ui/component/component.dart';
import 'package:flutter/material.dart';

class UpdateProductScreen extends StatelessWidget {
  ProductModel productModel;
  UpdateProductScreen(this.productModel);
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController amountExistingController = TextEditingController();
  TextEditingController amountTrustController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    nameController.text = productModel.name;
    numberController.text = productModel.number.toString();
    amountExistingController.text = productModel.amountExisting.toString();
    amountTrustController.text = productModel.amountExisting.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text("تعديل منتج"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                height: 250.0,
                child: Image(
                  image: AssetImage("${productModel.image}"),
                  fit: BoxFit.contain,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    // color: Colors.grey,
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            Card(
              color: Colors.grey[100],
              margin: EdgeInsetsDirectional.all(15.0),
              elevation: 5.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  defaultFormField(
                      suffiixtext: ': اسم المنتج',
                      controller: nameController,
                      type: TextInputType.name,
                      prefix: Icons.circle),
                  defaultFormField(
                      suffiixtext: ": رقم المنتج",
                      controller: numberController,
                      type: TextInputType.number,
                      prefix: Icons.circle),
                  defaultFormField(
                      suffiixtext: ':الكمية الموجودة',
                      controller: amountExistingController,
                      type: TextInputType.number,
                      prefix: Icons.circle),
                  defaultFormField(
                      suffiixtext: ":كمية الأمانة",
                      controller: amountTrustController,
                      type: TextInputType.number,
                      prefix: Icons.circle),
                ],
              ),
            ),
            defaultButton(function: () {}, text: 'تعديل'),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
