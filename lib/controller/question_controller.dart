import 'package:first_fontend_project/const/texts/all_texts.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController {
  int i = 0;
  List<String> questionList = [AllText.q0,AllText.q1,AllText.q2,AllText.q3,AllText.q4,AllText.q5];
  String ? Item;
  String get getItem=>Item!;

  QuestionController(){
    Item=questionList[i];
  }
  void getQuestion() {
    i++;
    Item=questionList[i];
    update();
  }
}
