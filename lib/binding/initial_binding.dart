import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:getx_clean/home/data/data_sources/newtork_info_provider.dart';
import 'package:getx_clean/home/data/data_sources/post_provider.dart';
import 'package:getx_clean/home/data/repositories/network_info_repository.dart';
import 'package:getx_clean/home/data/repositories/post_repository.dart';
import 'package:getx_clean/home/domain/repositories/network_info_repository.dart';
import 'package:getx_clean/home/domain/repositories/post_repository.dart';
import 'package:getx_clean/home/domain/use_cases/get_all_post.dart';
import 'package:getx_clean/home/presentation/manager/all_post_controller.dart';

class AppBinding extends Bindings
{
  static final find = Get.find;
  @override
  void dependencies() {
    Get.lazyPut(() => Connectivity());

    Get.lazyPut<INetworkInfoProvider>(() => NetworkInfoProvider(find()));
    Get.lazyPut<INetworkInfoRepository>(() => NetworkInfoRepository(find()));



    Get.lazyPut<IPostProvider>(() => PostProvider());
    Get.lazyPut<IPostRepository>(() => PostRepository(find()));
    Get.lazyPut(() => GetAllPost(find(), find()));
    Get.lazyPut(() => AllPostController(find()));


  }

}