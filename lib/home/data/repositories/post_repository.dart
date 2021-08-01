import 'package:flutter/cupertino.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:getx_clean/helper/response_decoder.dart';
import 'package:getx_clean/home/data/data_sources/post_provider.dart';
import 'package:getx_clean/home/domain/entities/post_response.dart';
import 'package:getx_clean/home/domain/repositories/post_repository.dart';

class PostRepository implements IPostRepository
{
 final IPostProvider _iPostProvider;
  PostRepository(this._iPostProvider);

  @override
  Future<List<PostResponse>> getAllPost() async {

    final response =await _iPostProvider.getAllPost();
    return ResponseDecoder.decode(response);
  }

}