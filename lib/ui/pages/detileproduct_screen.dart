import 'package:alashraf/models/productModel.dart';
import 'package:alashraf/ui/component/component.dart';
import 'package:alashraf/ui/pages/updateproduct_screen.dart';
import 'package:alashraf/ui/pages/inserttproduct_screen.dart';
import 'package:flutter/material.dart';

class DetileProductScreen extends StatelessWidget {
  ProductModel productModel;
  DetileProductScreen(this.productModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("مواصفات المنتج"),
        ),
        body: SingleChildScrollView(
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
                    RowItem(context, 'اسم المنتج : ${productModel.name}',
                        Icons.circle),
                    Divider(),
                    RowItem(context, 'رقم المنتج : ${productModel.number}',
                        Icons.circle),
                    Divider(),
                    RowItem(
                        context,
                        'الكمية الموجودة : ${productModel.amountExisting}',
                        Icons.circle),
                    Divider(),
                    RowItem(
                        context,
                        'كمية الأمانة : ${productModel.amountTrust}',
                        Icons.circle),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  defaultButton(function: () {}, text: 'حذف'),
                  defaultButton(
                      function: () {
                        navigateTo(context, UpdateProductScreen(productModel));
                      },
                      text: 'تعديل'),
                  defaultButton(
                      function: () {
                        navigateTo(context, InsertProductScreen(productModel));
                      },
                      text: 'إضافة'),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ));
  }
}

Widget RowItem(context, String text, IconData icon) => Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Text(
            text,
            textDirection: TextDirection.rtl,
            style: Theme.of(context).textTheme.bodyText2,
          )),
          SizedBox(
            width: 20.0,
          ),
          Icon(
            icon,
            color: Colors.red,
          ),
        ],
      ),
    );
