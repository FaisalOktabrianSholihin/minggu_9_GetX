import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:latihan/model/product.dart';

class Purchase extends GetxController {
  var products = <Product>[].obs;
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));

    var serverResponse = [
      Product(1, "Mouse", "aby", "alat eksternal komputer", 100.0),
      Product(2, "Keyboard", "aby", "alat eksternal komputer", 150.0),
      Product(3, "Monitor", "aby", "alat eksternal komputer", 165.0),
      Product(4, "Speaker", "aby", "alat eksternal komputer", 50.0),
      Product(5, "RAM", "aby", "alat internal komputer", 900.0),
      Product(6, "SSD", "aby", "alat internal komputer", 980.0),
    ];

    products.value = serverResponse;
  }
}
