import 'package:blocapi/data/models/post_model.dart';
import 'package:blocapi/data/repositories/api/api.dart';
import 'package:dio/dio.dart';

class PostRepository {
  API api = API();

  Future<List<PostModel>> fetchPosts() async {
    try {
      Response response = await api.sendRequest.get("/posts");
      List<dynamic> postMaps = response.data;
      return postMaps.map((postMap) => PostModel.fromJson(postMap)).toList();
    } catch (ex) {
      throw ex;
    }
  }
}
