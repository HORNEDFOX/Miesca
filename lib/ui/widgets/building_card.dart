import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../textstyle/text_style.dart';
import '../theme/colors_light.dart';

Widget BuildingCard() {
  return Card(
    color: Colors.transparent,
    elevation: 0,
    child: InkWell(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: lightBackgroundCard,
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 200.0,
                        width: 185.0,
                        decoration: BoxDecoration(
                            color: lightThreeText,
                            image: DecorationImage(
                              image: NetworkImage("https://www.itl.cat/pngfile/big/289-2892650_medieval-castle-wallpaper-data-src-full-1225267-.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            )
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 52.0,
                                  width: 52.0,
                                  decoration: BoxDecoration(
                                    color: lightThreeText,
                                    image: DecorationImage(
                                      image: NetworkImage("https://www.itl.cat/pngfile/big/289-2892650_medieval-castle-wallpaper-data-src-full-1225267-.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 52.0,
                                  width: 52.0,
                                  decoration: BoxDecoration(
                                    color: lightThreeText,
                                    image: DecorationImage(
                                      image: NetworkImage("https://www.itl.cat/pngfile/big/289-2892650_medieval-castle-wallpaper-data-src-full-1225267-.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 52.0,
                                  width: 52.0,
                                  decoration: BoxDecoration(
                                    color: lightThreeText,
                                    image: DecorationImage(
                                      image: NetworkImage("https://www.itl.cat/pngfile/big/289-2892650_medieval-castle-wallpaper-data-src-full-1225267-.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: RichText(
                      text: TextSpan(
                          text: 'К',
                          style: headline3.copyWith(
                            letterSpacing: 0,
                            color: lightPrimary,
                          ),
                          children: [
                            TextSpan(
                              text: 'омплекс Умястоўскіх',
                              style: headline3.copyWith(
                                color: lightSecondaryText,
                              ),
                            )
                          ]),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      'Жамыслаўль',
                      style: bodytext1.copyWith(
                        color: lightThreeText,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          itemSize: 16.0,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          unratedColor: lightThreeText,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: lightPrimary,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        const SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          '5 reviews',
                          style: bodytext1.copyWith(
                            color: lightThreeText,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 10.0,
                right: 10.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(204, 204, 204, 0.4),
                        spreadRadius: 3,
                        blurRadius: 30,
                        offset: Offset(3, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(10.0),
                  child: Icon(Icons.favorite,
                      size: 28.0, color: lightPrimary),
                )//Icon
              ),
            ],
          ),
      ),
    ),
  );
}
