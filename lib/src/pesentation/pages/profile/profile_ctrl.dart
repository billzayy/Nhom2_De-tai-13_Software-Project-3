import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:software_project_3/config/localVariable.dart';

class ProFileController extends GetxController {
  RxString fullName = ''.obs;

  // final loginController = Get.find<LoginController>();

  @override
  void onInit() {
    loadData();
    // TODO: implement onInit
    super.onInit();
  }

  Future<void> loadData() async {
    final prefs = await SharedPreferences.getInstance();
    fullName.value = prefs.getString(LocalVariable.userName) ?? '';
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
