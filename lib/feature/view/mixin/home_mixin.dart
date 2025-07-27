import 'package:flutter/material.dart';
import 'package:nodelabscase/feature/view/home_view.dart';
import 'package:nodelabscase/feature/viewmodel/home_view_model.dart';

/// [HomeViewMixin] is a [State] mixin that contains the login view logic.
mixin HomeViewMixin on State<HomeView> {
  /// [homeViewModel] is the view model for the home view.
  late final HomeViewModel _homeViewModel;

  /// [_scrollController] is the scroll controller for the home view.
  late final ScrollController _scrollController;

  /// [homeViewModel] is the view model for the home view.
  HomeViewModel get homeViewModel => _homeViewModel;

  /// [scrollController] is the scroll controller for the home view.
  ScrollController get scrollController => _scrollController;

  @override
  void initState() {
    super.initState();
    _homeViewModel = HomeViewModel();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    _homeViewModel.getMovieList();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) return;

    final state = _homeViewModel.state;
    final pagination = state.movieList?.data?.pagination;
    final isLoading = state.isLoading;
    final currentPage = pagination?.currentPage ?? 1;
    final maxPage = pagination?.maxPage ?? 1;
    homeViewModel.setShowMoreButton(isExpanded: false);
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent - 100 &&
        !isLoading &&
        currentPage < maxPage) {
      _homeViewModel.getMovieList(page: currentPage + 1);
    }
  }
}
