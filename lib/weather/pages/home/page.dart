import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_figma_template/weather/data/weather_item.dart';
import 'package:flutter_figma_template/weather/models/weather_item.dart' as m;
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder:
            (context, constraints) => Stack(
              children: [
                Image.asset(
                  'assets/weather/background.png',
                  fit: BoxFit.contain,
                ),
                SizedBox(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 51),
                          Text(
                            "Montreal",
                            style: TextStyle(fontSize: 34, color: Colors.white),
                          ),
                          Text(
                            "19°",
                            style: TextStyle(
                              fontSize: 96,
                              color: Colors.white,
                              // fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            "Mostly Clear",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0x99EBEBF5),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "H:24° L:18°",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/weather/House.png',
                        fit: BoxFit.scaleDown,
                      ),
                      SizedBox(height: 142),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: WeatherBottomSheet(constraints: constraints),
                ),
              ],
            ),
      ),
    );
  }
}

class WeatherBottomSheet extends StatelessWidget {
  const WeatherBottomSheet({super.key, required this.constraints});
  final BoxConstraints constraints;
  @override
  Widget build(BuildContext context) {
    final wK = (constraints.maxWidth / 390);
    return Container(
      height: 325 * wK,
      width: constraints.maxWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        ),
        //color: Colors.transparent,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xff2E335A), Color(0xff1C1B33)],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            child: SizedBox(
              width: constraints.maxWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Hourly Forecast",
                    style: TextStyle(fontSize: 15, color: Color(0x99ebebf5)),
                  ),
                  Text(
                    "Weekly Forecast",
                    style: TextStyle(fontSize: 15, color: Color(0x99ebebf5)),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: (constraints.maxWidth / 2) - ((48 * wK) / 2),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0x4c000000),
              ),
              height: 5 * wK,
              width: 48 * wK,
            ),
          ),
          Positioned(
            top: 50,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0x4cffffff),
              ),
              height: 1 * wK,
              width: constraints.maxWidth,
            ),
          ),
          Positioned(
            top: 50,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Color(0x00ffffff),
                gradient: LinearGradient(
                  stops: [0.56, 0.78, 0.97],
                  colors: [Color(0x00000000), Colors.white, Color(0x00000000)],
                ),
              ),
              height: 3 * wK,
              width: constraints.maxWidth,
            ),
          ),
          Positioned(
            bottom: 0,
            child: SvgPicture.asset(
              'assets/weather/bootsheet2.svg',
              width: constraints.maxWidth,
              //height: 88,
            ),
          ),
          Positioned(
            bottom: -1,
            left: constraints.maxWidth / 2 - (129 * wK),
            child: SvgPicture.asset(
              'assets/weather/bootsheet.svg',
              height: 100 * wK,
            ),
          ),
          Positioned(
            bottom: 20 * wK,
            left: 20 * wK,
            child: Image.asset('assets/weather/Hover.png', height: (44 * wK)),
          ),
          Positioned(
            bottom: -15,
            left: (constraints.maxWidth / 2) - ((128 * wK) / 2),
            child: Image.asset('assets/weather/plus.png', height: 128 * wK),
          ),
          Positioned(
            bottom: 20 * wK,
            right: 20 * wK,
            child: Image.asset(
              'assets/weather/star_list.png',
              height: (44 * wK),
            ),
          ),
          Positioned(
            top: 65,
            left: 20,
            child: SizedBox(
              height: 150 * wK,
              width: constraints.maxWidth,
              child: ListView.separated(
                physics: PageScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(width: 12),
                itemCount: weatherItems.length,
                itemBuilder:
                    (context, index) =>
                        WeatherItem(koef: wK, item: weatherItems[index]),

                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WeatherItem extends StatelessWidget {
  const WeatherItem({super.key, required this.koef, required this.item});
  final double koef;
  final m.WeatherItem item;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 146 * koef,
        width: 60 * koef,
        decoration: BoxDecoration(
          color: Color(0x3348319D),
          borderRadius: BorderRadius.circular((60 * koef) / 2),
          border: Border.all(color: Color(0x33ffffff), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              item.hour,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            Column(
              children: [
                Image.asset(
                  'assets/weather/${item.image}.png',
                  height: 32 * koef,
                  width: 32 * koef,
                  fit: BoxFit.scaleDown,
                ),

                Text(
                  item.warm,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff40CBD8),
                  ),
                ),
              ],
            ),
            Text(
              '${item.temp}°',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
