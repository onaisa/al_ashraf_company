import 'package:flutter/material.dart';

class AboutUseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HederItem(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Card(
                color: Colors.grey[100],
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'منذ بداية تقدم الصناعة في سورية في خمسينيات القرن الماضي، دأبت شركة الأشرف على تطوير صناعة عجلات الحمولة الصناعية والتجارية وعرباتها مما حذى بها دخول عالم المطاط الواسع، وبقيت تطور نفسها إلى يومنا هذا من خلال متابعة كل ما تنتجه العقول البشرية في عالم العجلات المطاط الطبيعي والصناعي والتشكيل المعدني وجعلها تدخل عالم صناعة القوالب المعدنية لخدمة منتجاتها الكثيرة التي تصل اليوم إلى أكثر من 80 منتج على اختلاف أنواعها ، ومن ثم دخلت الشركة في إنتاج قوالب للسوق، ومنها تفرع لها فرع لصناعة كافة أنواع القطع البلاستيكية وقوالبها ونتيجة للتحديات التي واجهت الشركة اتجهت الشركة إلى صناعة الآلات المخدمة للصناعة التي تخص بها الشركات.',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.ltr,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            )
          ],
        ),
      ),
    );
  }
}

Widget HederItem() => Container(
      height: 180.0,
      width: double.infinity,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Colors.grey[400],
              height: 130.0,
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomStart,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: CircleAvatar(
                radius: 65.0,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/logo.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
