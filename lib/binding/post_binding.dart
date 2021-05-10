import 'package:get/get.dart';
import 'package:flutter_getx_builder/controller/post_controller.dart';

class PostBinding implements Bindings {
    @override
    void dependencies() {
        Get.lazyPut(() => PostController());
    }
}
