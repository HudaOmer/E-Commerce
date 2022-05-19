import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../view/cart_view.dart';
import '../../view/home_view.dart';
import '../../view/profile_view.dart';

class HomeViewModel extends GetxController {
  int _navigatorValue = 0;


  get navigatorValue => _navigatorValue;
  Widget _currentScreen = HomeView();
  get currentScreen => _navigatorValue;

  void changeSelectedValue(int selectedValue) {
    _navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          _currentScreen = HomeView();
          break;
        }
      case 1:
        {
          _currentScreen = CartView();
          break;
        }
      case 2:
        {
          _currentScreen = ProfileView();
          break;
        }
    }
    update();
  }
}
