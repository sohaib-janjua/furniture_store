import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Savannah easy chair",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Material(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber,
                      child: Text("\$245.00"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
