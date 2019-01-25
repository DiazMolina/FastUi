import 'package:flutter/material.dart';

class FasterUiTwo extends StatefulWidget {
  @override
  _FasterUiTwoState createState() => _FasterUiTwoState();
}

class _FasterUiTwoState extends State<FasterUiTwo> {
  @override
  var image =
      "https://assets.adidas.pe/image/upload/f_auto,q_auto,fl_lossy/esPE/Images/originals-ss19-nite-jogger-hp-tc-v1-d_tcm202-303479.jpg";
  var lentes =
      "https://www.econolentes.com.pe/wp-content/uploads/2018/06/96907-4897059210186-front-01-julius-juam02-st.andrew-navy-blue.png";
  var mochilas = "https://i.blogs.es/009dea/kensington/1366_2000.jpg";
  var relojes =
      "https://d26lpennugtm8s.cloudfront.net/stores/074/153/products/reloj-6029112001-bc3d6005d2926c1ea914866677877413-1024-1024.jpg";
  var pulseras =
      "https://d26lpennugtm8s.cloudfront.net/stores/074/153/products/dsc_9110-editar1-f65b1658410658e39615296887768023-1024-1024.jpg";
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.add_box), title: Text("Ofertas")),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite), title: Text("Favorito")),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), title: Text("Carrito")),
        BottomNavigationBarItem(icon: Icon(Icons.face), title: Text("Perfil")),
      ]),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                image,
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.darken,
                color: Colors.black.withOpacity(0.5),
              ),
              title: Stack(
                children: <Widget>[
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Nueva",
                            style: TextStyle(color: Colors.white, fontSize: 28),
                          ),
                          Text(
                            "Colección",
                            style: TextStyle(color: Colors.white, fontSize: 28),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Search"),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 180,
                      child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border(top: BorderSide(), right: BorderSide())),
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                                height: 100,
                                child:
                                    Image.network(relojes, fit: BoxFit.cover)),
                            Text(
                              "Relojes",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 180,
                      child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border(top: BorderSide(), right: BorderSide())),
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                                height: 100,
                                child:
                                    Image.network(pulseras, fit: BoxFit.cover)),
                            Text(
                              "Pulseras",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 180,
                      child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border(top: BorderSide(), right: BorderSide())),
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                                height: 100,
                                child:
                                    Image.network(mochilas, fit: BoxFit.cover)),
                            Text(
                              "Mochilas",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 180,
                      child: Container(
                        decoration: BoxDecoration(
                            border:
                                Border(top: BorderSide(), right: BorderSide())),
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                                height: 100,
                                child:
                                    Image.network(lentes, fit: BoxFit.cover)),
                            Text(
                              "Lentes",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
