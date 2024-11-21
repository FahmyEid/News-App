import 'package:flutter/material.dart';
import 'package:news/models/card_model.dart';
import 'package:news/widgets/category_card.dart';

class CardListView extends StatelessWidget {
   CardListView({
    super.key,
    
  });
 final List<CardModel> card_model = [
    CardModel(image: "assets/technology.jpg", name: "technology"),
    CardModel(image: "assets/sports.jpg", name: "sports"),
    CardModel(image: "assets/health.webp", name: "health"),
    CardModel(image: "assets/science.jpg", name: "science"),
    CardModel(image: "assets/business.webp", name: "business"),
    CardModel(image: "assets/entertaiment.avif", name: "entertaiment"),
    CardModel(image: "assets/general.jpeg", name: "general"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 6,
      child: ListView.separated(
        
          scrollDirection: Axis.horizontal,
          physics:const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>
              CategoryCard(cardModel: card_model[index]),
          separatorBuilder: (context, index) => SizedBox(
                width: MediaQuery.of(context).size.width / 40,
              ),
          itemCount: card_model.length),
    );
  }
}
