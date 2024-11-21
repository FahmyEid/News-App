import 'package:flutter/material.dart';
import 'package:news/models/news_title_model.dart';

class NewsTitleCard extends StatelessWidget {
  const NewsTitleCard({
    super.key, required this.newsTitleModel,
  });
final NewsTitleModel newsTitleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: NetworkImage(
                  newsTitleModel.image??"https://imgs.search.brave.com/H4Y3z9e3YqZxRCv0A57xslw1oy_ZknKq_AlTLoIJJDc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTM1/MTcwNTg2NC9waG90/by90aGUtd29yZHMt/YnJlYWtpbmctbmV3/cy1vbi1hbi1hYnN0/cmFjdC1iYWNrZ3Jv/dW5kLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1ydDVWb3Rx/LUlyM2pzVG5fb2JJ/SDdUREs1N0g5MmJ3/UzN6dWlNQnI1ZHNZ/PQ"),
                fit: BoxFit.cover),
          ),
          height: MediaQuery.of(context).size.height / 4,
          width: double.infinity,
        ),
        Text(
          newsTitleModel.title,
          maxLines: 2,
          style: const TextStyle(
              color:  Color.fromARGB(255, 46, 39, 39),
              fontWeight: FontWeight.bold,
              fontSize: 18),
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          newsTitleModel.subTitle??" ",
          maxLines: 2,
          style: const TextStyle(
              color: Colors.grey,
              
              fontSize: 18),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
