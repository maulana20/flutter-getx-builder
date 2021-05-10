import 'package:http/http.dart' as http;
import 'package:flutter_getx_builder/data/model/post.dart';

import 'dart:async';
import 'dart:convert';

class PostApi {
    Map<String, String> headers = {'Content-Type': 'application/json'};
    
    Future<List<Post>> getList(String url) async {
        http.Response response = await http.get(url, headers: headers);
        
        final result = json.decode(response.body);
        
        return result.map<Post>((json) => Post.fromJson(json)).toList();
    }
    
    Future<Map> updatePost(String url, Map<String, String> params) async {
        final body = json.encode(params);
        http.Response response = await http.post(url, body: body, headers: headers);
        
        final result = json.decode(response.body);
        
        return result;
    }
}
