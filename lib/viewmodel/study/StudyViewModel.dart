
import 'package:get/get.dart';

enum StudyRouter { leftfirst, leftsecond }

class StudyViewModel extends GetxController {

  var router = StudyRouter.leftfirst.obs;

  void updateRouter(StudyRouter router) {
    this.router.value = router;
  }

  @override
  void onInit() {
    super.onInit();
  }
}