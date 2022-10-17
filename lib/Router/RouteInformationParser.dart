import 'package:flutter/cupertino.dart';

import 'MyRoute.dart';

class MyRouteInformationParser extends RouteInformationParser<MyConfiguration> {
  @override
  RouteInformation restoreRouteInformation(MyConfiguration configuration) {
    switch (configuration.myRoute) {
      case MyRoute.home:
        return RouteInformation(location: '/home', state: configuration.tab);
      case MyRoute.search:
        return RouteInformation(location: '/search', state: configuration.tab);
      case MyRoute.like:
        return RouteInformation(location: '/like', state: configuration.tab);
      case MyRoute.setting:
        return RouteInformation(location: '/setting', state: configuration.tab);
    }
    throw 'unknown';
  }

  @override
  Future<MyConfiguration> parseRouteInformation(
      RouteInformation routeInformation) async {
    final String routeName = routeInformation.location!;

    if (routeName == '/home') {
      return MyConfiguration(MyRoute.home, 0);
    } else if (routeName == '/search') {
      return MyConfiguration(MyRoute.search, 1);
    } else if (routeName == '/like') {
      return MyConfiguration(MyRoute.like, 2);
    } else if (routeName == '/setting') {
      return MyConfiguration(MyRoute.setting, 3);
    }
    throw 'unKnown';
  }
}
