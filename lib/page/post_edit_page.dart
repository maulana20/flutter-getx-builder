import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:flutter_getx_builder/data/model/post.dart';
import 'package:flutter_getx_builder/controller/post_edit_controller.dart';

class PostEditPage extends StatelessWidget {
    PostEditController _postEditController = Get.put(PostEditController());
    
    @override
    Widget build(BuildContext context) {
        return GetBuilder<PostEditController>(
            builder: (_) {
                return Scaffold(
                    appBar: AppBar(
                        title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Text('Post Edit'),
                                Text('${_.post.id}'),
                            ],
                        ),
                    ),
                    body: ListView(
                        shrinkWrap: true,
                        padding: EdgeInsets.all(10.0),
                        children: <Widget>[
                            TextFormField(
                                controller: _postEditController.userId,
                                decoration: InputDecoration(
                                    labelText: 'User ID',
                                    contentPadding: EdgeInsets.all(10.0),
                                ),
                            ),
                            TextFormField(
                                controller: _postEditController.title,
                                keyboardType: TextInputType.multiline,
                                maxLines: 3,
                                decoration: InputDecoration(
                                    labelText: 'Title',
                                    contentPadding: EdgeInsets.all(10.0),
                                ),
                            ),
                            TextFormField(
                                controller: _postEditController.body,
                                maxLines: 8,
                                decoration: InputDecoration(
                                    labelText: 'Body',
                                    contentPadding: EdgeInsets.all(10.0),
                                ),
                            ),
                            ButtonTheme.bar(
                                child: ButtonBar(
                                    children: <Widget>[
                                        FlatButton(
                                            child: const Text('SIMPAN'),
                                            onPressed: () => _.updatePost(),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                );
            }
        );
    }
}
