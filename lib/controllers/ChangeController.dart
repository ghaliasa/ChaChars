import 'package:get/get.dart';

class ChangeController extends GetxController {
  RxDouble rate = 10.0.obs;
  RxInt loop = 1.obs;
  RxInt innerCounter = 0.obs;
  RxDouble fp = 0.0.obs;
  RxDouble fpCounter = 0.0.obs;
  RxBool childering = false.obs;
}
