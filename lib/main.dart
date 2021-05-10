import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_builder/binding/post_binding.dart';
import 'package:flutter_getx_builder/binding/post_edit_binding.dart';
import 'package:flutter_getx_builder/page/post_page.dart';
import 'package:flutter_getx_builder/page/post_edit_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    final appTitle = 'Getx Builder Demo';
    
    @override
    Widget build(BuildContext context) {
        return GetMaterialApp(
            initialBinding: PostBinding(),
            initialRoute: '/',
            getPages: [
                GetPage(name: '/', page: () => PostPage(), binding: PostBinding(), ),
                GetPage(name: '/edit', page: () => PostEditPage(), binding: PostEditBinding(), ),
            ],
            home: PostPage(appTitle: appTitle),
        );
    }
}
