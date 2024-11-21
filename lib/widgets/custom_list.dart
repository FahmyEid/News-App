import 'package:flutter/material.dart';
import 'package:news/widgets/card_list_view.dart';
import 'package:news/widgets/list_of_news.dart';

class CustomList extends StatelessWidget {
  

  const CustomList({
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: CardListView(),),
        SliverToBoxAdapter(child: SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),),
          ListOfNews( catgoryname: 'genral',),
      ],
    );
  }
}


