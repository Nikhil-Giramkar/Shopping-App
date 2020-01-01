import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shopping_app/components/horizontal_listvew.dart';
import 'package:shopping_app/components/products.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
  debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
        height: 200.0,
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('images/c1.jpg'),
            AssetImage('images/c2.jpg'),
            AssetImage('images/c3.jpg'),
            AssetImage('images/c4.jpg'),
            AssetImage('images/c5.jpg'),
            AssetImage('images/c6.jpg'),
            AssetImage('images/c7.jpg'),
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
        ));

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Fashion App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                fontFamily: 'Times New Roman',
              )),
          actions: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        drawer: new Drawer(
            child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Nikhil Giramkar'),
              accountEmail: Text('niksgiramkar@gmail.com'),
              currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                backgroundColor: Colors.grey,
              )),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home, color: Colors.deepPurple)),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(
                    Icons.person,
                    color: Colors.indigo,
                  )),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.deepOrange,
                  )),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text('Shopping Cart'),
                  leading: Icon(Icons.dashboard, color: Colors.orange)),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red[600],
                  )),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.cyan,
                  )),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                  title: Text('About'),
                  leading: Icon(
                    Icons.help,
                    color: Colors.green,
                  )),
            ),
          ],
        )),
        body: ListView(
          children: <Widget>[
            image_carousel,
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Categories'),
            ),
            HorizontalList(),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Recent Products'),
            ),
            Container(
              height: 320.0,
              child: Products(),
            )
          ],
        ));
  }
}
