import 'package:alashraf/models/productModel.dart';
import 'package:alashraf/ui/component/component.dart';
import 'package:alashraf/ui/pages/detileproduct_screen.dart';
import 'package:flutter/material.dart';

class ViweProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> titles = ["مواد مصنعة", "مواد نصف مصنعة", "مواد أولية"];
    List<Tab> myTabs = List.generate(
        3,
        (index) => Tab(
              text: titles[index],
            ));
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: myTabs,
          ),
        ),
        body: TabBarView(children: [
          primaryMaterialScreen(),
          secanderyMaterialScreen(),
          thirdlrMaterialScreen()
        ]),
      ),
    );
  }
}

Widget thirdlrMaterialScreen() => Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.grey[200],
      child: GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 1 / 1.3,
        children: List.generate(thirdlyBrouduct.length,
            (index) => buildGraidItem(thirdlyBrouduct[index])),
      ),
    );

Widget secanderyMaterialScreen() => Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.grey[200],
      child: GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 1 / 1.3,
        children: List.generate(secandaryBrouduct.length,
            (index) => buildGraidItem(secandaryBrouduct[index])),
      ),
    );
Widget primaryMaterialScreen() => Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.grey[200],
      child: GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 15.0,
        childAspectRatio: 1 / 1.3,
        children: List.generate(primaryBrouduct.length,
            (index) => buildGraidItem(primaryBrouduct[index])),
      ),
    );

class buildGraidItem extends StatefulWidget {
  ProductModel producModel;

  buildGraidItem(this.producModel);

  @override
  _buildGraidItemState createState() => _buildGraidItemState();
}

class _buildGraidItemState extends State<buildGraidItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            setState(() {
              navigateTo(context, DetileProductScreen(widget.producModel));
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // padding: EdgeInsets.all(10.0),
                child: Image(
                  image: AssetImage("${widget.producModel.image}"),
                  height: 150.0,
                  width: 150.0,
                  fit: BoxFit.cover,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0)),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(widget.producModel.number.toString()),
                  Text(widget.producModel.name)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
