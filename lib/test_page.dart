import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_statement_example/test_cubit.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TestCubit>(
      create: (_) => TestCubit(),
      child: Scaffold(
        body: BlocBuilder<TestCubit, TestCubitState>(
          builder: (context, state) {
            return Center(
              child: GestureDetector(
                  onTap: () => context.read<TestCubit>().increment(),
                  child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      child: Center(child: Text(state.count.toString()))
                  )
              ),
            );
          },
        ),
      ),
    );
  }
}