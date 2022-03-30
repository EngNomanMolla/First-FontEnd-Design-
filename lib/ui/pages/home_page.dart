import 'package:first_fontend_project/const/colors/all_colors.dart';
import 'package:first_fontend_project/const/texts/all_texts.dart';
import 'package:first_fontend_project/controller/question_controller.dart';
import 'package:first_fontend_project/ui/widgets/dialoge.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AllColors.backroudColor,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0.0),
      body: GetBuilder<QuestionController>(builder: (controller) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      radius: 30,
                      child: Text(
                        "মোর লোগো ঘুরতে গেছে",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10),
                      )),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Record their answer",
                      style: TextStyle(color: AllColors.greenColor),
                    ),
                    style: TextButton.styleFrom(
                        side: BorderSide(
                            width: 2.0, color: AllColors.greenColor)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35.h),
            Text(AllText.headingText,
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: AllColors.greenColor, fontSize: 18.sp))),
            SizedBox(height: 35.h),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 500.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AllColors.whiteColor,
                ),
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(controller.getItem,
                          style: GoogleFonts.aBeeZee(
                            textStyle: TextStyle(
                                fontSize: 25.sp, color: AllColors.greenColor),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 35.h),
            TextButton.icon(
              onPressed: () {
                copyText(controller.getItem);
              },
              icon: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: const Icon(
                  Icons.copy,
                  color: AllColors.whiteColor,
                ),
              ),
              label: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: const Text(
                  "Copy this question",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AllColors.whiteColor, fontWeight: FontWeight.bold),
                ),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: AllColors.greenColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0))),
            ),
            OutlinedButton.icon(
              onPressed: () {
                if (controller.i == 5) {
                  showToast(title: 'কিহ?', content: 'এ ব্যাডা থাম আর নাই।');
                }
                if (controller.i < 5) {
                  controller.getQuestion();
                }
              },
              icon: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: const Icon(
                  Icons.swap_horiz_outlined,
                  color: AllColors.greenColor,
                ),
              ),
              label: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: const Text(
                  "Try another one",
                  style: TextStyle(
                      color: AllColors.greenColor, fontWeight: FontWeight.bold),
                ),
              ),
              style: TextButton.styleFrom(
                  side: BorderSide(width: 2, color: AllColors.greenColor),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0))),
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  "Made with love by Md Noman",
                  style: TextStyle(color: AllColors.greenColor),
                ),
              ),
            ))
          ],
        );
      }),
    );
  }

  void showToast({String? title, String? content}) {
    Get.snackbar(title!, content!,
        colorText: AllColors.whiteColor,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: AllColors.greenColor);
  }

  void copyText(String getItem) {
    Clipboard.setData(ClipboardData(text: getItem))
        .then((value) => showToast(title: "হুম!", content: "কপি হইছে।")).then((value) => Get.dialog(MyAlertDialoge()));
  }
}
