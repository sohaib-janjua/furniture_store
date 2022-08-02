import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyTileWidget extends StatelessWidget {
  const MyTileWidget({
    Key? key,
    required this.color,
    required this.title,
    required this.subtile,
    required this.price,
    required this.image,
    required this.rattings,
  }) : super(key: key);

  final Color color;
  final String title;
  final String subtile;
  final String price;
  final String image;
  final String rattings;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Card(
          elevation: 1,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(rattings,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(color: Colors.grey))
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              subtile.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: Colors.grey),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(price,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.brown.shade900,
                        ),
                        height: 25,
                        width: 25,
                        child: const Icon(
                          FontAwesomeIcons.plus,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
        top: 0,
        left: 30,
        right: 30,
        child: Badge(
          badgeColor: color,
          position: BadgePosition.topEnd(
            top: 3,
            end: 3,
          ),
          badgeContent: const Icon(
            Icons.favorite,
            size: 20,
            color: Colors.white,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    ]);
  }
}
