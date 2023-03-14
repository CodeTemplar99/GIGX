import 'dart:convert';
import 'package:gigm_app/models/api.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = "https://jsonplaceholder.typicode.com/posts?_limit=20";

  Future<List<Post>> getPosts() async {
    var response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body);

      List<Post> posts =
          body.map((dynamic item) => Post.fromJson(item)).toList();

      return posts;
    } else {
      throw "Failed to load posts.";
    }
  }
}
