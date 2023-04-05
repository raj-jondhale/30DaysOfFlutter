import 'package:flutter/material.dart';
import 'package:my_app/pages/cart_page.dart';
import 'package:my_app/pages/home_detail_page.dart';
import 'package:my_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'core/store.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'widgets/themes.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      routeInformationParser: VxInformationParser(),
      routerDelegate: VxNavigator(
        routes: {
          "/": (_, __) => MaterialPage(child: loginPage()),
          MyRoutes.homeRoute: (_, __) => MaterialPage(child: HomePage()),
          MyRoutes.homeDetailRoute: (_, params) => MaterialPage(child: HomeDetailPage(catalog: params,)),
          MyRoutes.loginRoute: (_, __) => MaterialPage(child: loginPage()),
          MyRoutes.cartRoute: (_, __) => MaterialPage(child: CartPage()),
        },
      ),
      // initialRoute: MyRoutes.loginRoute,
      // routes: {
      //   "/": (context) => loginPage(),
      //   MyRoutes.homeRoute: (context) => HomePage(),
      //   MyRoutes.loginRoute: (context) => loginPage(),
      //   MyRoutes.cartRoute: (context) => CartPage(),
      // },
    );
  }
}
