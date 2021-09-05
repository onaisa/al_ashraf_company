import 'package:alashraf/models/productModel.dart';
import 'package:alashraf/ui/component/component.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class InsertProductScreen extends StatelessWidget {
  ProductModel productModel;
  InsertProductScreen(this.productModel);
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController amountExistingController = TextEditingController();
  TextEditingController amountTrustController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // nameController.text = productModel.name;
    // numberController.text = productModel.number.toString();
    // amountExistingController.text = productModel.amountExisting.toString();
    // amountTrustController.text = productModel.amountExisting.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text("إضافة منتج"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
              child: Container(
                child: Center(child: Text('أضف صورة للمنتج')),
                height: 250.0,
                width: 300.0,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
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
                      controller: nameController,
                      type: TextInputType.name,
                      label: 'اسم المنتج',
                      prefix: Icons.circle),
                  defaultFormField(
                      controller: numberController,
                      type: TextInputType.number,
                      label: 'رقم المنتج',
                      prefix: Icons.circle),
                  defaultFormField(
                      controller: amountExistingController,
                      type: TextInputType.number,
                      label: 'الكمية الموجودة',
                      prefix: Icons.circle),
                  defaultFormField(
                      controller: amountTrustController,
                      type: TextInputType.number,
                      label: "كمية الأمانة",
                      prefix: Icons.circle),
                ],
              ),
            ),
            defaultButton(function: () {}, text: 'إضافة'),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
