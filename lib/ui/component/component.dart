import 'package:alashraf/models/productModel.dart';
import 'package:alashraf/ui/pages/aboutus_screen.dart';
import 'package:alashraf/ui/pages/craeteorder_screen.dart';
import 'package:alashraf/ui/pages/login_screen.dart';
import 'package:alashraf/ui/pages/logout_screen.dart';
import 'package:alashraf/ui/pages/viweorder_screen.dart';
import 'package:alashraf/ui/pages/wherehous_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget MyDrawer(BuildContext context) => Drawer(
      child: SafeArea(
        child: Container(
          // color: HexColor('333739'),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            // Container(padding: padding,color: Colors.grey,
            Expanded(
                flex: 1,
                child: Container(
                    alignment: Alignment.center,
                    color: Colors.red[900],
                    child: Text(
                      'الأشرف',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ))),
            // ),
            Expanded(
              flex: 9,
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 12),
                        const SizedBox(height: 24),
                        buildMenuItem(
                          text: 'تسجيل الدخول',
                          icon: Icons.login,
                          onClicked: () => selectedItem(context, 0),
                        ),
                        const SizedBox(height: 16),
                        buildMenuItem(
                          text: 'المخازن',
                          icon: Icons.home,
                          onClicked: () => selectedItem(context, 1),
                        ),
                        const SizedBox(height: 16),
                        buildMenuItem(
                          text: 'إنشاء طلب',
                          icon: Icons.workspaces_outline,
                          onClicked: () => selectedItem(context, 2),
                        ),
                        const SizedBox(height: 16),
                        buildMenuItem(
                          text: 'عرض الطلبات',
                          icon: Icons.view_agenda,
                          onClicked: () => selectedItem(context, 3),
                        ),
                        const SizedBox(height: 16),
                        buildMenuItem(
                          text: 'تسجيل الخروج',
                          icon: Icons.logout,
                          onClicked: () => selectedItem(context, 4),
                        ),
                        const SizedBox(height: 24),
                        Divider(color: Colors.white70),
                        const SizedBox(height: 16),
                        buildMenuItem(
                          text: 'أسأل عنا',
                          icon: Icons.help_center,
                          onClicked: () => selectedItem(context, 5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );

Widget buildMenuItem({String text, IconData icon, VoidCallback onClicked}) {
  final color = Colors.red[900];
  // final hoverColor = HexColor('333739');

  return ListTile(
    leading: Icon(icon, color: color, textDirection: TextDirection.ltr),
    title: Text(text,
        style: TextStyle(color: color), textDirection: TextDirection.rtl),
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      navigateTo(context, LoginScreen());

      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Wherhouses(),
      ));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => CreateOrderScreen(
          list: allProduct,
        ),
      ));
      break;
    case 3:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ViweOrderScreen(),
      ));
      break;
    case 4:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => LogoutScreen(),
      ));
      break;
    case 5:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => AboutUseScreen(),
      ));
      break;
  }
}

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(
  context,
  widget,
) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );
Widget defaultButton({
  // double width = double.infinity,
  Color background = Colors.red,
  bool isUpperCase = true,
  double radius = 5.0,
  @required Function function,
  @required String text,
}) =>
    Container(
      // width: width,
      height: 40.0,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );

Widget defaultTextButton({
  @required Function function,
  @required String text,
}) =>
    TextButton(
      onPressed: function,
      child: Text(
        text.toUpperCase(),
        style: TextStyle(color: Colors.red, fontSize: 14.0),
      ),
    );
Widget defaultFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  String suffiixtext,
  Function onSubmit,
  Function onChange,
  Function onTap,
  bool isPassword = false,
  String validate,
  String label,
  IconData prefix,
  Widget suffix,
  Function suffixPressed,
  bool isClickable = true,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: (String str) {
        if (str.isEmpty) {
          return validate;
        } else {
          return null;
        }
      },
      textAlign: TextAlign.end,
      textDirection: TextDirection.ltr,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.red,
        ),
        suffixText: suffiixtext,
        hintText: label,
        hintTextDirection: TextDirection.ltr,
        //بدلت بين ال بريفيكس و سوفيس لانة ماعندي وقت غير لغة وجهة التطبيق  لكن هذا غلط بالحالات العادية
        prefixIcon: suffix != null
            ? IconButton(onPressed: suffixPressed, icon: suffix)
            : null,
        //  Icon(
        //   prefix,
        //   color: Colors.red,
        // ),
        labelStyle: TextStyle(color: Colors.red, fontSize: 20.0),
        // labelText: label,

        suffixIcon: Icon(
          prefix,
          color: Colors.red,
        ),
        // suffix != null
        //     ? IconButton(onPressed: suffixPressed, icon: suffix)
        //     : null,
        border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
      ),
    );
