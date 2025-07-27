import 'dart:ui' as ui;
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gen/src/model/movies.dart';
import 'package:nodelabscase/feature/view/mixin/home_mixin.dart';
import 'package:nodelabscase/feature/viewmodel/home_view_model.dart';
import 'package:nodelabscase/product/init/language/locale_keys.g.dart';
import 'package:nodelabscase/product/state/home_state.dart';
import 'package:nodelabscase/product/utility/constants/enums/duration.dart';

part '../part_of_view/part_of_home_view.dart';

@RoutePage()

/// [HomeView] is a class that contains the home view.
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

final class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: homeViewModel,
        child: BlocBuilder<HomeViewModel, HomeState>(
          builder: (context, state) {
            final movies = state.movieList?.data?.movies ?? [];
            final pagination = state.movieList?.data?.pagination;
            final currentPage = pagination?.currentPage ?? 1;
            final maxPage = pagination?.maxPage ?? 1;
            final isLoading = state.isLoading;

            if (isLoading && movies.isEmpty) {
              return const Center(child: CircularProgressIndicator.adaptive());
            }
            if (movies.isEmpty) {
              return Center(
                  child: const Text(LocaleKeys.error_could_not_find_movie).tr());
            }

            return _DiscoverList(
              scrollController: scrollController,
              movies: movies,
              currentPage: currentPage,
              maxPage: maxPage,
              isLoading: isLoading,
              homeViewModel: homeViewModel,
              state: state,
            );
          },
        ),
      ),
    );
  }
}
