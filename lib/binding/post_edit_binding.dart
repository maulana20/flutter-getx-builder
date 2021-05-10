import 'package:get/get.dart';
import 'package:flutter_getx_builder/controller/post_edit_controller.dart';

class PostEditBinding implements Bindings {
    @override
    void dependencies() {
        Get.lazyPut(() => PostEditController());
    }
}
