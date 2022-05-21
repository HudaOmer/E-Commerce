import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/view_model/home_view_model.dart';
import 'package:untitled/view/widgets/custom_text.dart';
import '../constants/constants.dart';
import 'auth/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final List<String> names = <String>[
    's',
    's',
    's',
    's',
    's',
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      builder: (controller) => Scaffold(
        body: ListView(children: [
          Container(
            padding: const EdgeInsets.only(top: 100.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                _searchTextFormField(),
                const SizedBox(
                  height: 50.0,
                ),
                CustomText(
                  text: 'Categories',
                ),
                const SizedBox(
                  height: 30.0,
                ),
                _listViewCategory(),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Best Selling',
                      fontSize: 18,
                    ),
                    CustomText(
                      text: 'See All',
                      fontSize: 16,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                _listViewProducts(),
                TextButton(
                  // style: TextButton.styleFrom(
                  //
                  // ),
                    onPressed: () {
                      FirebaseAuth.instance.signOut();
                      FirebaseAuth.instance.signOut();

                      Get.offAll(() => LoginScreen());
                    },
                    child: CustomText(text:"Log Out",color:Colors.grey,fontSize: 10,))
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget _searchTextFormField() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.grey[200]),
      child: TextFormField(
          decoration: const InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ))),
    );
  }

  Widget _listViewCategory() {
    return GetBuilder<HomeViewModel>(
      builder: (controller) => controller.loading.value?const CircularProgressIndicator() : SizedBox(
        height: 100,
        child: ListView.separated(
          itemCount: controller.categoryModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.grey.shade100,
                  ),
                  height: 60.0,
                  width: 60.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Image.network(controller.categoryModel[index].image!),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CustomText(
                  text: controller.categoryModel[index].name!,fontSize: 12,
                )
              ],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 20.0),
        ),
      ),
    );
  }

  Widget _listViewProducts() {
    return SizedBox(
      height: 350,
      child: ListView.separated(
        itemCount: names.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.grey.shade100,
                  ),
                  // height:60.0,
                  child: SizedBox(
                      height: 220,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Image.asset(
                        "assets/img_2.png",
                        fit: BoxFit.fill,
                      )),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CustomText(
                  text: 'BeoPlay Speaker',
                  alignment: Alignment.bottomLeft,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CustomText(
                  text: 'Speaker',
                  alignment: Alignment.bottomLeft,
                  color: Colors.grey.shade400,
                  fontSize: 12,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CustomText(
                  text: '\$755',
                  alignment: Alignment.bottomLeft,
                  color: primaryColor,
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20.0),
      ),
    );
  }

// Widget _bottomNavigationBar() {
//   return GetBuilder<HomeViewModel>(
//     init: HomeViewModel(),
//     builder: (controller) => BottomNavigationBar(
//       items: const [
//         BottomNavigationBarItem(
//             activeIcon: Padding(
//               padding: EdgeInsets.only(top: 20.0),
//               child: Text("Explore"),
//             ),
//             label: '',
//             icon: Padding(
//               padding: EdgeInsets.only(top: 20.0),
//               child: Icon(
//                 Icons.explore,
//                 color: Colors.black,
//               ),
//             ),
//             backgroundColor: primaryColor),
//         BottomNavigationBarItem(
//             activeIcon: Padding(
//               padding: EdgeInsets.only(top: 20.0),
//               child: Text("Cart"),
//             ),
//             label: '',
//             icon: Padding(
//               padding: EdgeInsets.only(top: 20.0),
//               child: Icon(
//                 Icons.shopping_cart,
//                 color: Colors.black,
//               ),
//             ),
//             backgroundColor: primaryColor),
//         BottomNavigationBarItem(
//             activeIcon: Padding(
//               padding: EdgeInsets.only(top: 20.0),
//               child: Text("Account"),
//             ),
//             label: '',
//             icon: Padding(
//               padding: EdgeInsets.only(top: 20.0),
//               child: Icon(
//                 Icons.person,
//                 color: Colors.black,
//               ),
//             ))
//       ],
//       currentIndex: controller.navigatorValue,
//       onTap: (index) {
//         controller.changeSelectedValue(index);
//         if(index == 1)
//       },
//       elevation: 0,
//       selectedItemColor: Colors.black,
//       backgroundColor: Colors.grey.shade50,
//     ),
//   );
// }
}
