import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Application/HorizontalInfinityBloc.dart';
import '../Application/HorizontalInfinityEvent.dart';
import '../Application/HorizontalInfinityState.dart';

class InfinityImageErrorScreen extends StatelessWidget {
  const InfinityImageErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HorizontalInfinityBloc, HorizontalInfinityState>(
      listener: (context, state) {
        if (!state.isError) {
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        body: Center(
          child: IconButton(
              iconSize: 100,
              onPressed: () {
                HapticFeedback.mediumImpact();
                context.read<HorizontalInfinityBloc>().add(HorizontalInitImagesEvent());
              },
              icon: const Icon(
                Icons.refresh_rounded,
              )),
        ),
      ),
    );
  }
}