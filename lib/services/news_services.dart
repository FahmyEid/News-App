import 'package:dio/dio.dart';
import 'package:news/models/news_title_model.dart';

class NewsServices {
  NewsServices({required this.category});
  final Dio dio = Dio();
  final String key = "d3eee22d3ac24a21b1d0b41ad1992ec4";
  final String country = "us";
  final String category ;
  Future<List<NewsTitleModel>> getNews() async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=$country&category=$category&apiKey=$key');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];
    List<NewsTitleModel> news_title_model = [];
    for (var article in articles) {
      NewsTitleModel newsTitleModel = NewsTitleModel(
        title: article["title"],
        subTitle: article["description"],
        image: article["urlToImage"],
        url: article["url"],
      );
      news_title_model.add(newsTitleModel);
    }
    return news_title_model;
  }
}
