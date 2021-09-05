import 'package:alashraf/models/productModel.dart';
import 'package:alashraf/ui/component/component.dart';
import 'package:flutter/material.dart';

class CreateOrderScreen extends StatefulWidget {
  List<ProductModel> list;

  CreateOrderScreen({@required this.list});

  @override
  _CreateOrderScreenState createState() => _CreateOrderScreenState();
}

class _CreateOrderScreenState extends State<CreateOrderScreen> {
  TextEditingController numbercontroller = TextEditingController();
  Map<String, bool> importSelectStor = {
    "عدرا": false,
    "المناخلية": false,
    "الطبالة": false
  };
  @override
  Widget build(BuildContext context) {
    List<String> titles = ["تصدير", "استيراد"];
    List<Tab> myTabs = List.generate(
        2,
        (index) => Tab(
              text: titles[index],
            ));
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            tabs: myTabs,
          ),
        ),
        body: TabBarView(children: [
          ExportScreen(cont: context, list: widget.list),
          ImportScreen(cont: context, list: widget.list),
        ]),
      ),
    );
  }

  Widget ImportScreen({List<ProductModel> list, BuildContext cont}) => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                    child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (cont, index) =>
                            buildListItem(list[index], cont),
                        separatorBuilder: (cont, index) => SizedBox(
                              height: 10.0,
                            ),
                        itemCount: list.length)),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 200,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            textDirection: TextDirection.rtl,
                            children: [
                              Expanded(
                                child: Text(
                                  ' : المخزن',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text('عدرا'),
                                    Checkbox(
                                        value: importSelectStor['عدرا'],
                                        onChanged: (value) {
                                          setState(() {
                                            importSelectStor['عدرا'] = value;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text('الطبالة'),
                                    Checkbox(
                                        value: importSelectStor['الطبالة'],
                                        onChanged: (value) {
                                          setState(() {
                                            importSelectStor['الطبالة'] = value;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text('المناخلية'),
                                    Checkbox(
                                        value: importSelectStor['المناخلية'],
                                        onChanged: (value) {
                                          setState(() {
                                            importSelectStor['المناخلية'] =
                                                value;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      defaultButton(function: () {}, text: 'استيراد')
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget ExportScreen({List<ProductModel> list, BuildContext cont}) => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                    child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (cont, index) =>
                            buildListItem(list[index], cont),
                        separatorBuilder: (cont, index) => SizedBox(
                              height: 10.0,
                            ),
                        itemCount: list.length)),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            textDirection: TextDirection.rtl,
                            children: [
                              Expanded(
                                child: Text(
                                  ' : المخزن',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text('عدرا'),
                                    Checkbox(
                                        value: importSelectStor['عدرا'],
                                        onChanged: (value) {
                                          setState(() {
                                            importSelectStor['عدرا'] = value;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text('الطبالة'),
                                    Checkbox(
                                        value: importSelectStor['الطبالة'],
                                        onChanged: (value) {
                                          setState(() {
                                            importSelectStor['الطبالة'] = value;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Text('المناخلية'),
                                    Checkbox(
                                        value: importSelectStor['المناخلية'],
                                        onChanged: (value) {
                                          setState(() {
                                            importSelectStor['المناخلية'] =
                                                value;
                                          });
                                        }),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      defaultButton(function: () {}, text: 'تصدير')
                    ],
                  )),
            ],
          ),
        ),
      );

  Widget buildListItem(ProductModel productModel, BuildContext con) =>
      Container(
        height: 150.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          textDirection: TextDirection.rtl,
          children: [
            Container(
              height: 100.0,
              width: 100.0,
              child: Image(
                image: AssetImage("${productModel.image}"),
                fit: BoxFit.cover,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.0, color: Colors.black, style: BorderStyle.none),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(4.0)),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Text(
                productModel.name,
                style: Theme.of(con).textTheme.bodyText1,
                textDirection: TextDirection.rtl,
              ),
            ),
            Checkbox(
                value: productModel.importSelected,
                onChanged: (value) {
                  setState(() {
                    productModel.importSelected = !productModel.importSelected;
                  });
                }),
            Expanded(
                child: TextField(
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.number,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      // enabled: true,
                      labelText: 'عدد',
                    ))),
          ],
        ),
      );
}
