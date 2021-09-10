import 'package:flutter/material.dart';
import 'core/util/navigator_service.dart';
import 'locator.dart';
import 'modules/login/views/signin.dart';

void main() {
  setup();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    navigatorKey: locator<NavigatorService>().navigatorKey,
    onGenerateRoute: (RouteSettings settings) {
      final parts = settings.name.split("?");
      if (parts[0] == "/menu_home") {
        return MaterialPageRoute(
            builder: (context) => SignIn(), settings: settings);
      } else if (parts[0] == "/detail") {
        return MaterialPageRoute(
            builder: (context) => SignIn(), settings: settings);
      } else {
        return MaterialPageRoute(
            builder: (context) => SignIn(), settings: settings);
      }
    },
  ));
  //runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignIn(),
    );
  }
}
