import 'package:alashraf/ui/component/component.dart';
import 'package:alashraf/ui/pages/viweproduct_screen.dart';
import 'package:flutter/material.dart';

class Wherhouses extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Wherehouses'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/factory_1.jpg'))),
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.grey.withOpacity(0.7),
                    child: Text("عدرا الصناعية ",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0)),
                  ),
                ),
                onTap: () {
                  navigateTo(context, ViweProductsScreen());
                },
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/factory_2.jpg'))),
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.grey.withOpacity(0.7),
                    child: Text("الطبالة ",
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0)),
                  ),
                ),
                onTap: () {
                  navigateTo(context, ViweProductsScreen());
                },
              ),
            ),
            Expanded(
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/factory_1.jpg'))),
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.grey.withOpacity(0.7),
                    child: Text(
                      "المناخلية ",
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0),
                    ),
                  ),
                ),
                onTap: () {
                  navigateTo(context, ViweProductsScreen());
                },
              ),
            ),
          ],
        ),
      );
}
