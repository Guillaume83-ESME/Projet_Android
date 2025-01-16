import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart'; // Add this import
import 'package:shared_preferences/shared_preferences.dart';
import 'package:swipezone/screens/home_page.dart';
import 'package:swipezone/screens/planning_page.dart';
import 'package:swipezone/screens/select_page.dart';
import 'package:swipezone/theme/theme.dart';
import 'package:swipezone/theme/theme_provider.dart';
import 'package:swipezone/repositories/models/location.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final pref = await SharedPreferences.getInstance();
  
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(pref: pref),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return Builder(
          builder: (context) {
            final theme = MaterialTheme(Theme.of(context).textTheme);
            return MaterialApp.router(
              routerConfig: _router,
              themeMode: themeProvider.getThemeMode(),
              theme: theme.lightMediumContrast(),
              darkTheme: theme.dark(),
            );
          },
        );
      },
    );
  }
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage(
          title: 'HomePage',
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/planningpage',
          builder: (context, state) {
            final selectedLocations = state.extra as List<Location>;
            return PlanningPage(
              title: 'Planning',
              selectedLocations: selectedLocations,
            );
          },
        ),


        GoRoute(
          path: 'selectpage',
          builder: (BuildContext context, GoRouterState state) {
            return const SelectPage(
              title: "SelectPage",
            );
          },
        ),
      ],
    ),
  ],
);
