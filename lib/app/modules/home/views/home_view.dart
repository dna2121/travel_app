// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:travel_app/app/routes/app_pages.dart';

import '../../../../widgets/content_home_text.dart';
import '../../../../widgets/places_item.dart';
import '../../../../widgets/search_bar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  String src =
      "https://cdns.klimg.com/resized/660x/g/1/0/10_potret_selfie_jimin_bts_tak_hanya_tampan_tapi_berhati_malaikat/p/jimin_bts-20200910-009-non_fotografer_kly.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              src,
              fit: BoxFit.cover,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContentHomeText(
            text: "Let's travel now",
            fontsize: 35,
          ),
          ContentHomeText(
              text:
                  "The Now Lets Travel Store specialises in great deals on holidays",
              fontsize: 18,
              fw: FontWeight.w300),

          //searchbar
          SearchBar(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ContentHomeText(
                text: "Recommended",
                fontsize: 24,
              ),
              TextButton(
                onPressed: () {
                  Get.offAllNamed(Routes.LOGIN);
                },
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                child: ContentHomeText(
                  text: "See All >",
                  fontsize: 18),
                ),
              
            ],
          ),

          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [PlacesItem(), PlacesItem(), PlacesItem()],
            ),
          ),
        ],
      ),
    );
  }
}

