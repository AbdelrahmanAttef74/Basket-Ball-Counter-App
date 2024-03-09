import 'package:basket_ball_counter/cubits/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  CounterCubit() : super(TeamAIncreamentState());

  void teamIncreament({required String team, required int buttonNumber}) {
    if (team == "A") {
      teamAPoints += buttonNumber;
      emit(TeamAIncreamentState());
    } else {
      teamBPoints += buttonNumber;
      emit(TeamBIncreamentState());
    }
  }
}
