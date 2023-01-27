import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../home/home_screen.dart';

part 'go_router_builder.g.dart';

@TypedGoRoute<HomeScreenRoute>(path: '/', routes: [
  TypedGoRoute<SongRoute>(
    path: 'song/:id',
  )
])
@immutable
class HomeScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

@immutable
class SongRoute extends GoRouteData {
  final int id;

  const SongRoute({
    required this.id,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}
