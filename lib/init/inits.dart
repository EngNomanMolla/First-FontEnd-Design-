import 'package:first_fontend_project/controller/question_controller.dart';
import 'package:get/get.dart';
Future<void> init()async{

  Get.lazyPut(()=>QuestionController());

}