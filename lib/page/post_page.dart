import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:flutter_getx_builder/data/model/post.dart';
import 'package:flutter_getx_builder/data/repository/post_repository.dart';
import 'package:flutter_getx_builder/data/provider/post_api.dart';
import 'package:flutter_getx_builder/controller/post_controller.dart';

class PostPage extends StatelessWidget {
    PostPage({ Key key, this.appTitle }) : super(key: key);
    
    String appTitle;
    
    @override
    Widget build(BuildContext context) {
        Get.put<PostApi>(PostApi());
        Get.put<PostRepository>(PostRepository());
        
        return Scaffold(
            appBar: AppBar(
                title: Text(appTitle),
            ),
            body: Container(
                margin: EdgeInsets.all(10.0),
                child: GetBuilder<PostController>(
                    builder: (_) => ListView.builder(
                        itemCount: _.posts.length,
                        itemBuilder: (BuildContext context, int index) {
                            final Post post = _.posts[index];
                            return Container(
                                child: Card(
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min, children: <Widget>[
                                            ListTile(
                                                title: Text(
                                                    post.title,
                                                    maxLines: 2,
                                                ),
                                                subtitle: Text(
                                                    post.body,
                                                    textAlign: TextAlign.justify,
                                                    maxLines: 2,
                                                ),
                                            ),
                                            ButtonTheme.bar(
                                                child: ButtonBar(
                                                    children: <Widget>[
                                                        FlatButton(
                                                            child: const Text('UBAH'),
                                                            onPressed: () =>_.edit(post),
                                                        ),
                                                    ],
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                            );
                        }
                    ),
                ),
            ),
        );
    }
}
