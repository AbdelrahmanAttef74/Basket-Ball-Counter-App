import 'package:basket_ball_counter/cubits/counter_cubit.dart';
import 'package:basket_ball_counter/cubits/counter_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BasketballCounter());
}

class BasketballCounter extends StatelessWidget {
  const BasketballCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if (state is TeamAIncreamentState) {
        } else {}
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text(
              'Points Counter',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                        style: const TextStyle(fontSize: 120),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          shape: const BeveledRectangleBorder(),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncreament(team: 'A', buttonNumber: 1);
                        },
                        child: const Text(
                          'add 1 Point',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          shape: const BeveledRectangleBorder(),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncreament(team: 'A', buttonNumber: 2);
                        },
                        child: const Text(
                          'add 2 Point',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          shape: const BeveledRectangleBorder(),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncreament(team: 'A', buttonNumber: 3);
                        },
                        child: const Text(
                          'add 3 Point',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 300,
                    child: VerticalDivider(
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                        style: const TextStyle(fontSize: 120),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          shape: const BeveledRectangleBorder(),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncreament(team: 'B', buttonNumber: 1);
                        },
                        child: const Text(
                          'add 1 Point',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          shape: const BeveledRectangleBorder(),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncreament(team: 'B', buttonNumber: 2);
                        },
                        child: const Text(
                          'add 2 Point',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                          shape: const BeveledRectangleBorder(),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .teamIncreament(team: 'B', buttonNumber: 3);
                        },
                        child: const Text(
                          'add 3 Point',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(150, 50),
                  shape: const BeveledRectangleBorder(),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context)
                      .counterReset(buttomNumber: 0);
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
