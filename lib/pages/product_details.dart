import 'package:flutter/material.dart';
import 'package:shopping_app/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_price;
  final product_detail_old_price;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_old_price,
    this.product_detail_picture,
    this.product_detail_price,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));},
            child: Text('Fashion App',)),
          actions: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),

          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
                height: 300.0,
                child: GridTile(
                    child: Container(
                      color: Colors.white,
                      child: Image.asset(widget.product_detail_picture),
                    ),
                    footer: Container(
                        color: Colors.white70,
                        child: ListTile(
                            leading: Text("${widget.product_detail_name}",
                                style: TextStyle(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                )),
                            title: Row(
                              children: <Widget>[
                                Expanded(
                                    child: Text(
                                        "\$${widget.product_detail_old_price}",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ))),
                                Expanded(
                                    child:
                                        Text("\$${widget.product_detail_price}",
                                            style: TextStyle(
                                              color: Colors.red,
                                            ))),
                              ],
                            ))))),
            Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Size"),
                              content: Text("Choose Size"),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text("Close"),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text("Size")),
                        Expanded(child: Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Color"),
                              content: Text("Choose Color"),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text("Close"),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text("Color")),
                        Expanded(child: Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Quantity"),
                              content: Text("Choose Quantity"),
                              actions: <Widget>[
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text("Close"),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Text("Qty")),
                        Expanded(child: Icon(Icons.arrow_drop_down)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: MaterialButton(
                     onPressed: () {},
                      color: Colors.red,
                     textColor: Colors.white,
                      elevation: 0.2,
                     child: Text("Buy Now"),
                )),
                new IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    color: Colors.red,
                    onPressed: () {}),
                new IconButton(
                    icon: Icon(Icons.favorite_border),
                    color: Colors.red,
                    onPressed: () {}),
              ],
            ),
            Divider(),
            new ListTile(
              title:  Text("Product Details"),
              subtitle: Text("Hi...This is product information."),

            ),

            Divider(),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Product Name",
                    style: TextStyle(color: Colors.grey,),
                  )
                ),
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Blazer",
                      style: TextStyle(color: Colors.black87,),
                    )
                ),

              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Product Brand",
                      style: TextStyle(color: Colors.grey,),
                    )
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                    child: Text(
                      "HRX",
                      style: TextStyle(color: Colors.black87,),
                    )
                ),

              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Product Condition",
                      style: TextStyle(color: Colors.grey,),
                    )
                ),
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Superb",
                      style: TextStyle(color: Colors.black87,),
                    )
                ),

              ],
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.all(8.0),
                child: Text("Similar Products"),
            ),

            Container(
              height: 300.0,
                child: Similar_products(),
            )

          ],
        ));
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {

  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpg",
      "old_price": 3000,
      "price": 1500,
    },
    {
      "name": "Green Gown",
      "picture": "images/products/dress1.jpg",
      "old_price": 3000,
      "price": 1500,
    },
    {
      "name": "Shoe",
      "picture": "images/products/shoe1.jpg",
      "old_price": 3000,
      "price": 1500,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_products(
            prod_name: product_list[index]["name"],
            prod_picture: product_list[index]["picture"],
            prod_old_price: product_list[index]["old_price"],
            prod_price: product_list[index]["price"],
          );
        });
  }
}

class Similar_single_products extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_products({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
            tag: prod_name,
            child: Material(
                child: InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      //passing values to product detail page
                        builder: (context) => ProductDetails(
                          product_detail_name: prod_name,
                          product_detail_old_price: prod_old_price,
                          product_detail_price: prod_price,
                          product_detail_picture: prod_picture,
                        ))),
                    child: GridTile(
                        footer: Container(
                            color: Colors.white70,
                            child: ListTile(
                              leading: Text(
                                prod_name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              title: Text("\$$prod_price",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w800,
                                  )),
                              subtitle: Text("\$$prod_old_price",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w800,
                                    decoration: TextDecoration.lineThrough,
                                  )),
                            )),
                        child: Image.asset(
                          prod_picture,
                          fit: BoxFit.cover,
                        ))))));
  }
}


