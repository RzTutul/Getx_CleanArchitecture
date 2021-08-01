import 'package:get/get.dart';
import 'package:getx_clean/home/domain/entities/post_response.dart';
import 'package:getx_clean/home/domain/use_cases/base_use_case.dart';
import 'package:getx_clean/home/domain/use_cases/get_all_post.dart';

class AllPostController extends GetxController{


  final GetAllPost _getAllPost;
  AllPostController(this._getAllPost);
  final allPost = Rxn<List<PostResponse>>(); //observable



  @override
  void onInit() async {
    await getAllPost();
    super.onInit();
  }

  getAllPost() async{
    final response = await _getAllPost.call(NoParams());
    allPost.value = response;

  }

}