import 'package:first_fontend_project/const/colors/all_colors.dart';
import 'package:first_fontend_project/const/texts/all_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAlertDialoge extends StatefulWidget {
  const MyAlertDialoge({Key? key}) : super(key: key);

  @override
  _MyAlertDialogeState createState() => _MyAlertDialogeState();
}

class _MyAlertDialogeState extends State<MyAlertDialoge> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      title: Align(
          alignment: Alignment.centerRight, child: InkWell(
          onTap: ()=>Get.back(),
          child: Icon(Icons.clear,color: AllColors.greenColor,))),
      content: SizedBox(
        height: 420.h,
        width: 200.w,
        child: ListView(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/book.jpg",height: 150.w,width: 100.w,fit: BoxFit.fill,)),

            SizedBox(height: 20.sp,),
            Text(
              AllText.alertTitle,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: 25.sp,
                      color: AllColors.greenColor,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(AllText.alertContent,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 13.sp,
                    color: AllColors.greenColor,
                  ),
                )),
            SizedBox(
              height: 20.h,
            ),
            Container(
              height: 43.h,
              width: 600,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey.withOpacity(0.4)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                    hintStyle: TextStyle(
                        color: AllColors.greenColor,
                        fontWeight: FontWeight.bold),
                    contentPadding: EdgeInsets.only(left: 10)),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),

            Container(
              height: 35.h,
              width: 600,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AllColors.greenColor),
              child: Center(
                  child: Text(
                "Get the E-BOOK",
                style: TextStyle(color: AllColors.whiteColor,fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
      ),
    );
  }
}
