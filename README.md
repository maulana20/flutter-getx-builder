# flutter-getx-builder
sample demo getx with builder for get data https://jsonplaceholder.typicode.com/posts

## Getting Started
getx merupakan micro framework untuk menyederhanakan sintax pada flutter utamanya berupa state management, route management, dan depedency management.

### 1. Install
`pubspec.yaml`
```bash
dependencies:
  http: any
  get: ^3.2.2
  flutter_easyloading: ^2.0.0
```
kemudian jalankan
```bash
flutter pub get
```

### 2. Directory
```bash
❏ lib
    ❏ binding
        ❏ post_binding.dart
        ❏ post_edit_binding.dart
    ❏ controller
        ❏ post_controller.dart
        ❏ post_edit_controller.dart
    ❏ data
        ❏ model
            ❏ post.dart
        ❏ provider
            ❏ post_api.dart
        ❏ repository
            ❏ post_repository.dart
    ❏ page
        ❏ post_page.dart
        ❏ post_edit_page.dart
    ❏ main.dart
```

![postcreen](https://github.com/maulana20/flutter-getx-builder/blob/main/screen/postcreen.jpg)

![editscreen](https://github.com/maulana20/flutter-getx-builder/blob/main/screen/editscreen.jpg)
