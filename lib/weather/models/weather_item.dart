import 'package:equatable/equatable.dart';

class WeatherItem extends Equatable {
  final String hour;
  final String image;
  final String temp;
  final String warm;

  WeatherItem({
    required this.hour,
    required this.image,
    required this.temp,
    required this.warm,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [hour, image, temp, warm];
}
