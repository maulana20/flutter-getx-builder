import 'package:get/get.dart';
import 'package:flutter_getx_builder/data/model/post.dart';
import 'package:flutter_getx_builder/data/repository/post_repository.dart';

import 'dart:async';

class PostController extends GetxController {
    final PostRepository _postRepository = Get.find<PostRepository>();
    
    List<Post> _posts = [];
    List<Post> get posts => _posts;
    
    Post _post;
    Post get post => _post;
    
    @override
    void onReady() {
        _load();
    }
    
    Future<void> _load() async {
        _posts = await _postRepository.getList();
        update();
    }
    
    Future<void> edit(Post post) {
        _post = post;
        Get.toNamed('/edit');
    }
}
