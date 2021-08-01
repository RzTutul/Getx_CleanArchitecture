import 'package:get/get.dart';
import 'package:getx_clean/home/domain/entities/post_response.dart';

abstract class IPostRepository{
  Future<List<PostResponse>> getAllPost();
}