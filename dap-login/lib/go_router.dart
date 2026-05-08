import 'package:flutter/material.dart';
import 'home.dart';
import 'login.dart';
import 'package:go_router/go_router.dart';
final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => const login(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const home(),
    ),
  ]
);
