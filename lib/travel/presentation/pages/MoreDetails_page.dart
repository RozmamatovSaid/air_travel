import 'package:air_travel/travel/presentation/widgets/FavoritesTexts_widget.dart';
import 'package:air_travel/travel/presentation/widgets/ShortInfoContainer_widget.dart';
import 'package:air_travel/travel/presentation/widgets/TariffDetail_widget.dart';
import 'package:air_travel/travel/presentation/widgets/TariffsText_widget.dart';
import 'package:air_travel/travel/presentation/widgets/TravelComposition_widget.dart';
import 'package:air_travel/travel/presentation/widgets/TravelDay_widget.dart';
import 'package:air_travel/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MoreDetails extends StatelessWidget {
  const MoreDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(18),
          width: 28,
          height: 28,
          child: SvgPicture.asset("TravelAssets/icons/back-arrow.svg"),
        ),
      ),
      body: ListView(
        children: [
          Image(
            image: AssetImage("TravelAssets/images/places/makka.png"),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(right: 13, left: 13, bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShortinfoContainerItem(
                  where: "Umra Safari",
                  info:
                      "Viza, Aviachiptalar, Transferlar, Mehmonxonalar (4 va 5 yulduzli), Ovqat (2 mahal milliy taom), Ekskursiyalar, Transport xizmati, Zamzam suvi (5 litr)",
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TravelDayItem_widget(
                      day: "10",
                      text: "KUN",
                      where: "Madinada",
                    ),
                    SizedBox(width: 10),
                    TravelDayItem_widget(
                      day: "5",
                      text: "KUN",
                      where: "Makkada",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                FavoritesTextsItem(text: "Sayohat tarkibi"),
                SizedBox(height: 10),
                Row(
                  children: [
                    TravelComposition(text: "Sug'urta"),
                    SizedBox(width: 3),
                    TravelComposition(text: "Chipta"),
                    SizedBox(width: 3),
                    TravelComposition(text: "Aviachipta"),
                    SizedBox(width: 3),
                    TravelComposition(text: "Viza"),
                  ],
                ),
                SizedBox(height: 16),
                FavoritesTextsItem(text: "Sayohat kundaligi"),
                SizedBox(height: 16),
                Container(
                  // width: 397,
                  height: 552,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                FavoritesTextsItem(text: "Tariflar"),
                SizedBox(height: 23),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TariffDetailItem(
                      tariffs: "Ekonom",
                      price: "1200＄",
                      OldPrice: "1300＄",
                      plane: " To'g'ridan-to'g'ri reys Toshkent Jidda Toshkent",
                      bus: " Zamonaviy va qulay avtobuslar",
                      medical: " Tibbiy sug’urta",
                      leaders: "Tarjibali yo'l boshchi",
                    ),
                    TariffDetailItem(
                      tariffs: "Standart",
                      price: "1400＄",
                      OldPrice: "1600＄",
                      plane: "To'g'ridan-to'g'ri reys Toshkent Jidda Toshkent ",
                      bus: "Zamonaviy va qulay avtobuslar",
                      medical: "Tibbiy sug’urta",
                      leaders: "Tajribali yo’l boshchi",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.3),
              blurRadius: 8,
              spreadRadius: 8,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Jami qiymat",
                  style: TextStyle(
                    color: AppColors.TextColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                Text(
                  "1200\$",
                  style: TextStyle(
                    color: AppColors.GreenMain,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Container(
              width: 280,
              height: 58,
              decoration: BoxDecoration(
                color: AppColors.GreenMain,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white30,
                    spreadRadius: 10,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset("TravelAssets/icons/shopping-bag.svg"),
                  Text(
                    "Buyurtma berish",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
