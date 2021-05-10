import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_builder/data/model/post.dart';
import 'package:flutter_getx_builder/data/repository/post_repository.dart';
import 'package:flutter_getx_builder/controller/post_controller.dart';

import 'dart:async';

class PostEditController extends GetxController {
    final PostRepository _postRepository = Get.find<PostRepository>();
    Post post = Get.find<PostController>().post;
    
    TextEditingController userId = TextEditingController();
    TextEditingController title = TextEditingController();
    TextEditingController body = TextEditingController();
    
    @override
    void onReady() {
        initData();
    }
    
    Future<void> initData() {
        userId.text = '${post.userId}';
        title.text = post.title;
        body.text = post.body;
    }
    
    Future<void> updatePost() async {
        Map<String, String> params = {'id': '${post.id}', 'userId': userId.text, 'title': title.text, 'body': body.text, };
        
        await _postRepository.updatePost(params);
        
        Get.dialog(
            AlertDialog(
                title: Text("Information"),
                content: Text("Post has updated !"),
                actions: [
                    FlatButton(
                        child: Text("OK"),
                        onPressed: () => Get.toNamed('/'),
                    )
                ],
            ),
        );
    }
}
