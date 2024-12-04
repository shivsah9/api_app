import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  var title = 'Home'.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  final dio = Dio();

  void fetchData() async {
    var response = await dio.get(
      'https://api.api-ninjas.com/v1/riddles',
      options: Options(
        headers: {'X-Api-Key': '1wDtvZuDeIn+MyJkLZp12g==zU8rGfoGQv54ePeW'},
      ),
    );



    title.value = response.data[0]['question'];
  }
}
