import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:ff_bloc/ff_bloc.dart';

import 'package:flutter_figma_template/weather/ff_you_awesome/index.dart';

@immutable
abstract class YouAwesomeEvent
    implements FFBlocEvent<YouAwesomeState, YouAwesomeBloc> {}

/// Initial Event with load data
class LoadYouAwesomeEvent extends YouAwesomeEvent {
  LoadYouAwesomeEvent({required this.id});
  final String? id;

  static const String _name = 'LoadYouAwesomeEvent';

  @override
  String toString() => _name;

  @override
  Stream<YouAwesomeState> applyAsync({required YouAwesomeBloc bloc}) async* {
    // set loading true for show loading
    yield bloc.state.copyWithoutError(isLoading: true);
    // fetch data
    final result = await bloc.provider.fetchAsync(id);
    // set data to state
    yield bloc.state.copyWithoutError(
      isLoading: false,
      data: YouAwesomeViewModel(items: result),
    );
  }
}

class AddYouAwesomeEvent extends YouAwesomeEvent {
  static const String _name = 'AddYouAwesomeEvent';

  @override
  String toString() => _name;

  @override
  Stream<YouAwesomeState> applyAsync({required YouAwesomeBloc bloc}) async* {
    yield bloc.state.copyWithoutError(isLoading: true);
    final result = await bloc.provider.addMore(bloc.state.data?.items);
    yield bloc.state.copyWithoutError(
      isLoading: false,
      data: YouAwesomeViewModel(items: result),
    );
  }
}

class ErrorYouAwesomeEvent extends YouAwesomeEvent {
  static const String _name = 'ErrorYouAwesomeEvent';

  @override
  String toString() => _name;

  @override
  Stream<YouAwesomeState> applyAsync({required YouAwesomeBloc bloc}) async* {
    throw Exception('Test error');
  }
}

class ClearYouAwesomeEvent extends YouAwesomeEvent {
  static const String _name = 'ClearYouAwesomeEvent';

  @override
  String toString() => _name;

  @override
  Stream<YouAwesomeState> applyAsync({required YouAwesomeBloc bloc}) async* {
    yield bloc.state.copyWithoutError(isLoading: true);
    yield bloc.state.copyWithoutData(isLoading: false);
  }
}
