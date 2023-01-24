// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class GreetingInfo extends StatelessWidget {
  const GreetingInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = kSize(context);
    List<Map<String, IconData>> menuItems = [
      {"All": Icons.grid_view_rounded},
      {"Men": Icons.male_rounded},
      {"Woman": Icons.female_rounded},
      {"Headphones": Icons.headphones},
      {"Girls": Icons.girl},
      {"Boys": Icons.boy_rounded},
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Shakil,",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.046,
                  ),
                ),
                const Text("What are you buying today?", style: kBodyGreyText),
              ],
            ),
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    borderRadius: BorderRadius.circular(100)),
                padding: const EdgeInsets.all(kDefaultPadding / 4),
                child: const Center(
                  child: Icon(
                    CupertinoIcons.shopping_cart,
                  ),
                ))
          ],
        ),
        const SizedBox(
          height: kDefaultPadding,
        ),
        Container(
          decoration: BoxDecoration(
              color: Color(0xFFF4F4F4),
              borderRadius: BorderRadius.circular(30)),
          height: 40,
          width: double.infinity,
          child: TextField(
            textAlign: TextAlign.left,
            decoration: kInputDecoration.copyWith(
              prefixIcon: Icon(CupertinoIcons.search),
              hintText: "Search products",
            ),
          ),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            ...List.generate(
              menuItems.length,
              (index) => Container(
                margin: EdgeInsets.only(right: kDefaultPadding / 2),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 3),
                constraints: BoxConstraints(maxHeight: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black38)),
                // ignore: prefer_const_literals_to_create_immutables
                child: Row(children: [
                  Icon(
                    menuItems[index].values.first,
                    color: Colors.black54,
                    size: 20,
                  ),
                  SizedBox(
                    width: kDefaultPadding / 4,
                  ),
                  Text(menuItems[index].keys.first)
                ]),
              ),
            )
          ]),
        )
      ],
    );
  }
}
