import 'package:equatable/equatable.dart';
import 'package:flutter_figma_template/weather/ff_you_awesome/index.dart';

class YouAwesomeViewModel extends Equatable {
  const YouAwesomeViewModel({required this.items});

  final List<YouAwesomeModel>? items;

  @override
  List<Object?> get props => [items];

  YouAwesomeViewModel copyWith({List<YouAwesomeModel>? items}) {
    return YouAwesomeViewModel(items: items ?? this.items);
  }
}
