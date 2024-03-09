import 'package:basket_ball_counter/cubits/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(super.initialState);
  int teamAPoints = 0;

  int teamBPoints = 0;

  void teamIncreament({required String team, required int teamNumber}) {
    if (team == "A") {
      teamAPoints += teamNumber;
      emit(TeamAIncreamentState());
    } else {
      teamBPoints += teamNumber;
      emit(TeamBIncreamentState());
    }
  }
}
