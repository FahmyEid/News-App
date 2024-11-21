import 'package:flutter/material.dart';
import 'package:news/models/news_title_model.dart';
import 'package:news/services/news_services.dart';
import 'package:news/widgets/news_title_card.dart';

class ListOfNews extends StatefulWidget {
  final String catgoryname;

  const ListOfNews({
    super.key, required this.catgoryname,
  });

  @override
  State<ListOfNews> createState() => _ListOfNewsState(catgoryname: catgoryname);
}

class _ListOfNewsState extends State<ListOfNews> {
  List<NewsTitleModel> articles=[];
  
  final String catgoryname;

  _ListOfNewsState({required this.catgoryname});
  @override
  void initState() {
   GetNews();
    super.initState();
  }
  Future<void> GetNews() async {
 articles= await NewsServices(category: catgoryname).getNews();
 setState(() {
   
 });
  }
  @override
  Widget build(BuildContext context) {
   
    return SliverList.separated(
      itemCount: articles.length,
      itemBuilder: ( context,  index) =>NewsTitleCard(newsTitleModel: articles[index],),
      separatorBuilder: ( context, int index) => SizedBox(
              height: MediaQuery.of(context).size.height / 40,
            ),
    );
  }
}