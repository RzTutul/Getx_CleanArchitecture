import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean/helper/post_item.dart';
import 'package:getx_clean/home/presentation/manager/all_post_controller.dart';

class AllPostWidget extends StatelessWidget {
  final AllPostController controller;

  const AllPostWidget({
    Key? key, required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("AllPostWidget");
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Obx(() => controller.allPost.value != null
          ? ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller.allPost.value!.length,
        itemBuilder: (BuildContext context, int index) {
          var item = controller.allPost.value![index];
          return postItem(size, item);
        },
      )
          : Center(
          child: Container(
            child: CircularProgressIndicator(),
          ))),
    );
  }
}
