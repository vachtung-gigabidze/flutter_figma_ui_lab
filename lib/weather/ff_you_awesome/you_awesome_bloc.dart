import 'package:ff_bloc/ff_bloc.dart';

import 'package:flutter_figma_template/weather/ff_you_awesome/index.dart';

class YouAwesomeBloc extends FFBloc<YouAwesomeEvent, YouAwesomeState> {
  YouAwesomeBloc({
    required this.provider,
    super.initialState = const YouAwesomeState(),
  });

  /// Use this for all requests to backend -  you can mock it in tests
  final YouAwesomeProvider provider;

  @override
  YouAwesomeState onErrorState(Object error) =>
      state.copy(error: error, isLoading: false);
}
