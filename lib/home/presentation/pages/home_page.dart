import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean/home/presentation/manager/all_post_controller.dart';
import 'package:getx_clean/home/presentation/widgets/all_post_widget.dart';

class HomePage extends GetResponsiveView<AllPostController> {

  @override
  Widget build(BuildContext context) {
    print("Hellow");
    return Scaffold(
      appBar: AppBar(
        title: Text("All Post"),
      backgroundColor: Colors.amber,
      ),
     body: SafeArea      (
       child: Container(
         child: SingleChildScrollView(
           child: Column(
             children: [
               Container(
                 child:
                   AllPostWidget(
                     controller: controller,
                   )
               )

             ],
           ),
         ),
        ),
     ),
    );
  }
}

