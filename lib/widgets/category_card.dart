import 'package:flutter/material.dart';
import 'package:news/Views/category_view.dart';
import 'package:news/models/card_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.cardModel,
  });
  final CardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    //  onTap: () => Navigator.of(context)
      //    .push(MaterialPageRoute(builder: (context) => CategoryView(name: cardModel.name))),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(cardModel.image), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(24)),
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width / 2,
        child: Center(
            child: Text(
          cardModel.name,
          style: const TextStyle(
              color: Colors.white, fontSize: 24, fontStyle: FontStyle.italic),
        )),
      ),
    );
  }
}
