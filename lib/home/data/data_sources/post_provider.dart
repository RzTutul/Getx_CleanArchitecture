import 'package:get/get.dart';
import 'package:getx_clean/home/domain/entities/post_response.dart';

abstract class IPostProvider {
  Future<Response<List<PostResponse>>> getAllPost();
}

class PostProvider extends GetConnect
 implements IPostProvider {
  @override
  Future<Response<List<PostResponse>>> getAllPost() {
    return get(
      "https://jsonplaceholder.typicode.com/posts",
        decoder: postResponseFromRawJson
    );
  }
}