// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../views/mycomponent/Glass.dart';

// ignore: use_key_in_widget_constructors
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset("assets/image.jpg").image, fit: BoxFit.fill),
        ),
        child: Center(
          child: Glass(
            width: MediaQuery.of(context).size.width / 1.3,
            height: MediaQuery.of(context).size.height / 1.5,
            child: ListView(
              children: const [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 7.0, right: 7.0),
                    child: Text(
                      "يسرّنا اسخدامكم لهذا التطبيق..\n تطبيقنا يساعد طفلكم على التعلم الصحيح لطريقة كتابة الأحرف و الأرقام العربية و الانكليزية\nو هو يستهدف الأطفال من عمر ثلاث إلى ست سنوات\nيمكنه بالبداية اختيار ما يريد تعلمه و سوف يدخل في ثلاث مراحل تعليم و فور انتهائه من التعليم يمكنه البدء بالتدريب و سوف يقوم بتحديد كم مرة يريد أن يقوم بالتدريب و فور الانتهاء يمكنه القيام بعملية الامتحان \n حيث أنه سيقوم بالتعليم ثلاث مرات حصراً ليدخل للتدريب و سيبقى في مرحلة التدريب إلى حين الانتهاء من عدد المرات التي أدخلها \n و الامتحان هو مرة واحدة\n في كل مرة يتم إرشاده للكتابة الصحيحة بطريقة معينة و يتم تحفيزه أيضاً على التعلم من خلال الأصوات المشجعة \n\nو غير ذلك أتاح التطبيق للأهل بمتابعة عملية تعليم أطفالهم من خلال مخططات \n\n في النهاية نتمنى أن يكون التطبيق فعّال و مفيد و نطمح دائماً للأفضل..",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
