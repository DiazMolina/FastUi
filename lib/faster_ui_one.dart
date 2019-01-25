import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class FasterUiOne extends StatefulWidget {
  @override
  _FasterUiOneState createState() => _FasterUiOneState();
}

class _FasterUiOneState extends State<FasterUiOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[100],
      ),
      floatingActionButton: MyActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyBottonBar(),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 16),
            MyAppBar(),
            SizedBox(height: 16),
            FoodListView(),
            SizedBox(height: 16),
            SelectType(),
            SizedBox(height: 16),
            MenuItemList()
          ],
        ),
      ),
    );
  }
}

class MyBottonBar extends StatelessWidget {
  const MyBottonBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(Icons.home,color: Colors.black45),
                  Text("Home",style: TextStyle(fontSize: 12))
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.search,color: Colors.black45),
                  Text("Search",style: TextStyle(fontSize: 12))
                ],
              ),
              SizedBox(width: 80),
              Column(
                children: <Widget>[
                  Icon(Icons.shop,color: Colors.black45),
                  Text("Wishlist",style: TextStyle(fontSize: 12))
                ],
              ),
              Column(
                children: <Widget>[
                  Icon(Icons.shopping_cart,color: Colors.black45),
                  Text("Cart",style: TextStyle(fontSize: 12))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyActionButton extends StatelessWidget {
  const MyActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: ClipPolygon(
        sides: 6,
        child: Container(
          color: Colors.green,
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Icon(Icons.book),
              SizedBox(height: 4),
              Text("Menu",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
          ],),
        ),
      ),
    );
  }
}

class MenuItemList extends StatelessWidget {
  const MenuItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Popular Dishes",style: TextStyle(fontSize: 22,color: Colors.black54),),
          SizedBox(height: 16),
         MenuItem(),
         MenuItem(),
         MenuItem(),
         MenuItem(),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            child:Image.network("http://cdn-images-1.medium.com/max/800/0*VvX4LKpawhwd5AI5.jpg",fit: BoxFit.cover),
          ),
          SizedBox(width: 16),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration:BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 4.0),
                    child: Row(children: <Widget>[
                      Icon(Icons.star,size: 15),
                      Text("4.5"),
                    ],),
                  ),
                ),
                SizedBox(height: 8.0),
                Text("Special Grill" ,style: TextStyle(fontWeight: FontWeight.w600),),
                Container(
                  width: 200,
                  child:Text("Steaks, Achiote, Lemon, Beer, Salt and Pepper...",style: TextStyle(color: Colors.grey)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SelectType extends StatelessWidget {
  const SelectType({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.deepPurple[100],borderRadius: BorderRadius.circular(14)),
            height: 70,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.access_time,color: Colors.purple),
                SizedBox(height: 5),
                Text("Grills",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w500),)
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.greenAccent[100],borderRadius: BorderRadius.circular(14)),
            height: 70,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.ac_unit,color: Colors.green),
                SizedBox(height: 5),
                Text("Sándwich",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500),)
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.redAccent[100],borderRadius: BorderRadius.circular(14)),
            height: 70,
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.add_alert,color: Colors.red),
                SizedBox(height: 5),
                Text("Sushi",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.grid_on,color: Colors.grey,), onPressed: null),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text("Location",style: TextStyle(color: Colors.black54)),
              Text("Miraflores, Lima", style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          )
        ],
      ),
    );
  }
}

class FoodListView extends StatelessWidget {
  const FoodListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        height: 160,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            ItemCard(),
            ItemCard(),
            ItemCard(),
            ItemCard()
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:8.0),
      child: Container(
        height: 160,
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("http://cdn-images-1.medium.com/max/800/0*VvX4LKpawhwd5AI5.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: Stack(
          children: <Widget>[
            Container(
              height: 160,
              width: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black.withOpacity(0.1),Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  Text("25% OFF",style: TextStyle(letterSpacing: 1.1,color: Colors.yellowAccent,fontWeight: FontWeight.bold,fontSize: 28)),
                  Text("ON FIRST 3 ORDERS",style: TextStyle(letterSpacing: 1.1,color: Colors.white,fontSize: 16),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
