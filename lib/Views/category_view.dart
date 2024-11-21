import 'package:flutter/material.dart';
import 'package:news/widgets/list_of_news.dart';

class CategoryView extends StatelessWidget {
  final String name;

  const CategoryView({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
            ListOfNews(catgoryname: name,),
        ],
      ),
    );
  }
}