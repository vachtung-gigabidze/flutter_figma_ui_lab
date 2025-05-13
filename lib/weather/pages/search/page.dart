import 'package:flutter/material.dart';
import 'package:flutter_figma_template/weather/widgets/sprite_painter.dart';
import 'dart:ui' as ui;
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  Future<ui.Image> loadImageFromAsset(String assetName) async {
    if (kIsWeb) {
      WidgetsFlutterBinding.ensureInitialized();
      var image = AssetImage(assetName);
      var key = await image.obtainKey(ImageConfiguration.empty);
      var stream = image.loadBuffer(
        key,
        PaintingBinding.instance.instantiateImageCodecFromBuffer,
      );
      var completer = Completer<ui.Image>();
      stream.addListener(
        ImageStreamListener((image, synchronousCall) {
          completer.complete(image.image);
        }),
      );
      return completer.future;
    }
    var buffer = await ImmutableBuffer.fromAsset(assetName);
    var codec = await ui.instantiateImageCodecFromBuffer(buffer);
    var frame = await codec.getNextFrame();
    return frame.image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [Color(0xff2E335A), Color(0xff1C1B33)],
          ),
        ),
        child: FutureBuilder<ui.Image>(
          future: loadImageFromAsset('assets/weather/weather_icon.png'),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      WeatherCustomPaint(
                        image: snapshot.data!,
                        frameIndex: index,
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 0);
                },
                itemCount: 5,
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}

class WeatherCustomPaint extends StatelessWidget {
  const WeatherCustomPaint({
    super.key,
    required this.image,
    required this.frameIndex,
  });
  final ui.Image image;
  final int frameIndex;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205,
      width: 342,

      child: Stack(
        children: [
          Positioned(
            top: 15,
            child: SvgPicture.asset('assets/weather/rectangle.svg'),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "19°",
                  style: TextStyle(
                    fontSize: 64,
                    color: Colors.white,
                    // fontWeight: FontWeight.w300,
                  ),
                ),

                Text(
                  "H:24° L:18°",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white54,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Montreal, Canada",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 178,
            child: SizedBox(
              width: 160,
              height: 160,
              // color: Colors.black12,
              child: CustomPaint(
                // size: Size(32, 32),
                painter: SpritePainter(
                  image: image,
                  frameIndex: frameIndex,
                  frameWidth: 320,
                  frameHeight: 320,
                  columns: 5,
                  resize: Size(160, 160),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
