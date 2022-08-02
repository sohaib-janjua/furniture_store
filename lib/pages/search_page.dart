import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furniture_store/components/my_tile_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () {},
              child: const Icon(
                FontAwesomeIcons.angleLeft,
                color: Colors.black,
              ),
            ),
          ),
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Search",
              style: TextStyle(color: Colors.black),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Badge(
                badgeColor: Colors.black,
                elevation: 5,
                position: BadgePosition.topEnd(top: 3, end: -3),
                badgeContent: const Text(
                  '5',
                  style: TextStyle(color: Colors.yellowAccent),
                ),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    child: Material(
                      borderRadius: BorderRadius.circular(10),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Modern Furniture',
                          prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: size.height * 0.06,
                    width: size.width * 0.13,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.brown.shade900,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: const Center(
                          child: Icon(
                            FontAwesomeIcons.sliders,
                            color: Colors.yellowAccent,
                          ),
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Found 25 results',
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: size.height * 0.35 / size.width,
                  children: const [
                    MyTileWidget(
                      title: "Savvanah easy chair",
                      subtile: "Moca forester",
                      price: "\$230.00",
                      color: Colors.red,
                      image: "assets/images/1.jpg",
                      rattings: "(5.0)",
                    ),
                    MyTileWidget(
                      title: "B2 Lounge Chair",
                      subtile: "Andhesen vol",
                      price: "\$165.00",
                      color: Colors.grey,
                      image: "assets/images/11.jpg",
                      rattings: "(4.5)",
                    ),
                    MyTileWidget(
                      title: "D4 Lounge Wood",
                      subtile: "hold tomholand",
                      price: "\$120.00",
                      color: Colors.grey,
                      image: "assets/images/3.jpg",
                      rattings: "(4.8)",
                    ),
                    MyTileWidget(
                      title: "Aavansah easy chair",
                      subtile: "folson andrew",
                      price: "\$290.00",
                      color: Colors.red,
                      image: "assets/images/4.jpg",
                      rattings: "(3.8)",
                    ),
                    MyTileWidget(
                      title: "D4 Lounge Wood",
                      subtile: "hold tomholand",
                      price: "\$120.00",
                      color: Colors.red,
                      image: "assets/images/5.jpg",
                      rattings: "(4.6)",
                    ),
                    MyTileWidget(
                      title: "Aavansah easy chair",
                      subtile: "folson andrew",
                      price: "\$290.00",
                      color: Colors.grey,
                      image: "assets/images/6.jpg",
                      rattings: "(3.8)",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
