import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 80.0,
       child: ListView(
      scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
              image_location: 'images/tshirt.jpg',
            image_caption: 'T-shirt' ,
          ),
          Category(
            image_location: 'images/pant.jpg',
            image_caption: 'Pants' ,
          ),
          Category(
            image_location: 'images/watch.jpg',
            image_caption: 'Watches' ,
          ),
          Category(
            image_location: 'images/dress.jpg',
            image_caption: 'Dresses' ,
          ),
          Category(
            image_location: 'images/formal.jpg',
            image_caption: 'Formals' ,
          ),
          Category(
            image_location: 'images/shoes.jpg',
            image_caption: 'Shoes' ,
          ),


       ],
       ),
    );
  }
}


class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  Category({
    this.image_location,
    this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
                image_location,
            width: 100.0,
                height: 80.0,
            ),
            subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption)
            ),

          ),
        )

      )

    );
  }
}

