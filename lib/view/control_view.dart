import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/view_model/auth_view_model.dart';
import 'package:untitled/view/auth/login_screen.dart';
import '../constants/constants.dart';
import '../core/view_model/home_view_model.dart';

class ControlView extends GetWidget<AuthViewModel> {
  const ControlView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthViewModel>().user == null)
          // ? HomeView() : LoginScreen();
          ? LoginScreen()
          : GetBuilder<HomeViewModel>(
            builder:(controller)=> Scaffold(
                body: controller.currentScreen,
                bottomNavigationBar: _bottomNavigationBar(),
              ),
          );
    });
  }

  Widget _bottomNavigationBar() {
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text("Explore"),
              ),
              label: '',
              icon: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Icon(
                  Icons.explore,
                  color: Colors.black,
                ),
              ),
              backgroundColor: primaryColor),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text("Cart"),
              ),
              label: '',
              icon: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
              backgroundColor: primaryColor),
          BottomNavigationBarItem(
              activeIcon: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text("Account"),
              ),
              label: '',
              icon: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
              ))
        ],
        currentIndex: controller.navigatorValue,
        onTap: (index) {
          controller.changeSelectedValue(index);
          if (index == 1) {}
        },
        elevation: 0,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.grey.shade50,
      ),
    );
  }
}
