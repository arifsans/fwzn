import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portofolio/models/project_model.dart';
import 'package:portofolio/pages/project_detail_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/projects_page.dart';
import 'pages/contact_page.dart';
import 'package:dynamic_path_url_strategy/dynamic_path_url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MainApp());
}

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutPage(),
    ),
    GoRoute(
      path: '/projects',
      builder: (context, state) => const ProjectsPage(),
    ),
    GoRoute(
      path: '/projects-detail',
      builder: (context, state) {
        ProjectModel project = state.extra as ProjectModel;
        return ProjectDetailPage(
          title: project.title,
          description: project.description,
          images: project.images,
        );
      },
    ),
    GoRoute(
      path: '/contact',
      builder: (context, state) => const ContactPage(),
    ),
  ],
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Fwzn',
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
    );
  }
}
