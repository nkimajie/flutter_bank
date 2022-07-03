import 'package:flutter/material.dart';
import 'package:shopping_cart/core/navigators/route_names.dart';
import 'package:shopping_cart/screens/auth_screen.dart';
import 'package:shopping_cart/screens/screens.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.splash:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: const SplashScreen(),
      );
    case Routes.welcome:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: const WeicomePage(),
      );
    case Routes.auth:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: AuthScreen(),
      );
    case Routes.login:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: LoginScreen(),
      );
    case Routes.mainPage:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: const MainPage(),
      );
    case Routes.homePage:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: const HomeScreen(),
      );

    case Routes.successPage:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: const SuccessScreen(),
      );
    case Routes.topup:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: const Topup(),
      );
    case Routes.purchaseOrder:
      return _getPageRoute(
        routeName: settings.name,
        viewToShow: const PurchaseOrder(),
      );

    default:
      return MaterialPageRoute<void>(
        builder: (_) => Scaffold(
          body: Center(
            child: Text(
              'No route defined for ${settings.name}',
            ),
          ),
        ),
      );
  }
}

PageRoute _getPageRoute({String? routeName, Widget? viewToShow}) {
  return MaterialPageRoute<void>(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow!,
  );
}
