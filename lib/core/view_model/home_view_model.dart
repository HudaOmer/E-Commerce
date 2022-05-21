import 'package:flutter/foundation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:untitled/core/services/home_services.dart';
import '../../model/category_model.dart';

class HomeViewModel extends GetxController {

  ValueNotifier<bool> get loading => _loading;
  final ValueNotifier<bool> _loading = ValueNotifier(false);

  List<CategoryModel> get categoryModel => _categoryModel;
  final List<CategoryModel> _categoryModel = [];

  HomeViewModel() {
    getCategory();
  }

  getCategory() async {
    _loading.value = true;
    HomeService().getCategory().then((value) {
      for (int i = 0; i < value.length; i++) {
        _categoryModel.add(CategoryModel.fromJson(value[i].data() as Map<dynamic, dynamic>));
        if (kDebugMode) {
          print(_categoryModel.length);
        }
        _loading.value = false;
      }
      update();
    });
  }
}



//The icons are from this link:
//<a href="https://www.flaticon.com/free-icons/handbag" title="handbag icons">Handbag icons created by iconixar - Flaticon</a>
