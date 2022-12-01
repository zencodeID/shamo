import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/facility_item.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/thumbnail.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'kurateka Spoot',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '\$52',
                                    style: purpleTextstyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '/month',
                                        style: greyTextStyle.copyWith(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/icon_star.png',
                                  width: 20,
                                  color: greyColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //NOTE: Main Facilities //
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    'Main Facilities',
                    style: regularTextstyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: edge,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FacilityItem(
                        name: 'Kitchen',
                        total: 2,
                        imageUrl: 'assets/icon_kitchen.png',
                      ),
                      FacilityItem(
                        name: "Bedroom",
                        total: 3,
                        imageUrl: 'assets/icon_bedroom.png',
                      ),
                      FacilityItem(
                        name: 'Big Lemari',
                        total: 2,
                        imageUrl: 'assets/icon_cupboard.png',
                      ),
                    ],
                  ),
                ),
                // NOTE * add photo
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Text(
                    "photo",
                    style: regularTextstyle.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 88,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: edge,
                      ),
                      Image.asset(
                        'assets/photo1.png',
                        width: 110,
                        height: 88,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Image.asset(
                        'assets/photo2.png',
                        width: 110,
                        height: 88,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Image.asset(
                        'assets/photo3.png',
                        width: 110,
                        height: 88,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: edge,
                      ),
                    ],
                  ),
                ),
                //NOTE : Location
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: edge),
                  child: Row(
                    children: [
                      Text(
                        "Location",
                        style: regularTextstyle.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: edge),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'jl. Kapan Sukses\nPalembang',
                        style: greyTextStyle,
                      ),
                      Image.asset(
                        'assets/btn_map.png',
                        width: 40,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: edge),
                  height: 50,
                  width: MediaQuery.of(context).size.width - (2 * edge),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: purpleColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Books Now",
                      style: whiteTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/btn_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
