import 'package:flutter/material.dart';
import 'package:test_clean_archi/features/articales/presentation/bloc/cubit/articales_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/dependency_injection.dart';
import '../widgets/articales_list.dart';

class ArticalesScreen extends StatelessWidget {
  const ArticalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => sl<ArticalesCubit>()..getAllArticales(),
        child: RefreshIndicator(
          onRefresh: () => context.read<ArticalesCubit>().getAllArticales(),
          child: BlocConsumer<ArticalesCubit, ArticalesState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () => Container(),
                  error: (errorHandler) =>
                      Text(errorHandler.apiErrorModel.message ?? ""),
                  succes: (data) => ArticalesList(
                        articales: data,
                      ),
                  loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ));
            },
          ),
        ),
      ),
    );
  }
}
