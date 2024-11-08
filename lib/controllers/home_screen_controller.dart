import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  @override
  void onInit() {
    super.onInit();
  }
}
