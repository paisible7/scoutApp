import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

const d_green = Color(0xFF168300);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Scout Espoir',
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [SearchSection(), PostSection()],
          ),
        ));
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(75);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Accueil"),
      backgroundColor: d_green,
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
      ),
      leading: IconButton(
        onPressed: null,
        icon: Icon(
          Icons.menu_rounded,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.place,
            color: Colors.white,
          ),
        ),
      ],
      centerTitle: true,
    );
  }
}

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 4,
                            offset: Offset(0, 3))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Recherche",
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 4,
                        offset: Offset(0, 4))
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.search,
                    size: 25,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                      backgroundColor: d_green,
                      foregroundColor: Colors.white),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'lorem ipsum',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text('lorem'),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('lorem ipsum'),
                    SizedBox(
                      height: 8,
                    ),
                    Text('lorem ipsum dolor'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
    );
  }
}

class PostSection extends StatelessWidget {
  final List postLists = [
    {
      'title': 'grand camp',
      'place': 'village katanga',
      'distance': 45,
      'review': 16,
      'picture': 'images/3.jpg',
      'price': 'village katanga',
    },
    {
      'title': 'grand camp',
      'place': 'kapolowe mission',
      'distance': 30,
      'review': 36,
      'picture': 'images/4.jpg',
      'price': 'kapolowe mission',
    },
    {
      'title': 'grand royal hotel',
      'place': 'grand royal hotel',
      'distance': 2,
      'review': 36,
      'picture': 'images/7.jpg',
      'price': 'grand royal hotel',
    },
    {
      'title': 'grand royal hotel',
      'place': 'grand royal hotel',
      'distance': 2,
      'review': 36,
      'picture': 'images/6.jpg',
      'price': 'grand royal hotel',
    },
    {
      'title': 'grand royal hotel',
      'place': 'grand royal hotel',
      'distance': 2,
      'review': 36,
      'picture': 'images/3.jpg',
      'price': 'grand royal hotel',
    },
    {
      'title': 'grand royal hotel',
      'place': 'grand royal hotel',
      'distance': 2,
      'review': 16,
      'picture': 'images/4.jpg',
      'price': 'grand royal hotel',
    },
    {
      'title': 'grand royal hotel',
      'place': 'grand royal hotel',
      'distance': 30,
      'review': 36,
      'picture': 'images/5.jpg',
      'price': 'grand royal hotel',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "loremm",
                ),
                Row(
                  children: [
                    Text(
                      'filtre',
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(Icons.filter_list_outlined),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            children: postLists.map((hotel) {
              return HotelCard(hotel);
            }).toList(),
          )
        ],
      ),
      color: Colors.white,
    );
  }
}

class HotelCard extends StatelessWidget {
  final Map hoteldata;

  HotelCard(this.hoteldata);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 210,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.cyan,
              image: DecorationImage(
                image: AssetImage(
                  hoteldata['picture'],
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                    top: 10,
                    right: -10,
                    child: MaterialButton(
                      color: Colors.white,
                      shape: CircleBorder(),
                      onPressed: () {},
                      child: Icon(
                        Icons.favorite_outline_rounded,
                        color: d_green,
                        size: 20,
                      ),
                    ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hoteldata['title'],
                ),
                Text(
                  hoteldata['price'],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hoteldata['place'],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.place,
                      color: d_green,
                      size: 14,
                    ),
                    Text(hoteldata["distance"].toString() + " Km de la ville")
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: [
                Row(children: [
                  Icon(
                    Icons.star_rate,
                    color: d_green,
                    size: 14,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: d_green,
                    size: 14,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: d_green,
                    size: 14,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: d_green,
                    size: 14,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: d_green,
                    size: 14,
                  ),
                ]),
                Text(hoteldata['review'].toString() + 'Vues')
              ],
            ),
          )
        ],
      ),
    );
  }
}
