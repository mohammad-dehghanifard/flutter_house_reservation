import 'package:get/get.dart';

class CommentController extends GetxController {
//======================================== Variables ===========================
  bool sendComment = false;

//======================================== Functions ===========================
  void changePageState() {
    sendComment = !sendComment;
    update();
  }
}
