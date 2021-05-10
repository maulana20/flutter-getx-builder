import 'package:get/get.dart';
import 'package:flutter_getx_builder/data/model/post.dart';
import 'package:flutter_getx_builder/data/provider/post_api.dart';

class PostRepository {
    final PostApi _postApi = Get.find<PostApi>();
    String url = "https://jsonplaceholder.typicode.com/posts";
    
    Future<List<Post>> getList() => _postApi.getList(url);
    
    Future<Map> updatePost(Map<String, String> params) => _postApi.updatePost("${url}/${params['id']}", params);
}
