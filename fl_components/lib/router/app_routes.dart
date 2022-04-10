import 'package:fl_components/model/model.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listview1',
        name: 'ListView 1 Screen',
        icon: Icons.home_max_outlined,
        screen: const Listview1Screen()),
    MenuOption(
        route: 'listview2',
        name: 'ListView 2 Screen',
        icon: Icons.home_max_outlined,
        screen: const Listview2Screen()),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        icon: Icons.home_max_outlined,
        screen: const CardScreen()),
    MenuOption(
        route: 'alert',
        name: 'Alert Screen',
        icon: Icons.home_max_outlined,
        screen: const AlertScreen()),
    MenuOption(
        route: 'avatar',
        name: 'Avatar Screen',
        icon: Icons.supervised_user_circle_rounded,
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        name: 'Animated Screen',
        icon: Icons.play_circle_outline_rounded,
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'input',
        name: 'Input Screen',
        icon: Icons.play_circle_outline_rounded,
        screen: const InputScreen()),
    MenuOption(
        route: 'slider',
        name: 'Slider Screen',
        icon: Icons.slideshow_rounded,
        screen: const SliderScreen()),
    MenuOption(
        route: 'listviewbuilder',
        name: 'List View Builder Screen',
        icon: Icons.list_alt_outlined,
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (var element in menuOptions) {
      appRoutes.addAll(
        {element.route: (BuildContext context) => element.screen},
      );
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
