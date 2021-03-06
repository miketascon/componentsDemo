import 'package:components/src/src/pages/animated_container.dart';
import 'package:components/src/src/pages/input_page.dart';
import 'package:flutter/material.dart';


import 'package:components/src/src/pages/card_page.dart';
import 'package:components/src/src/pages/alert_page.dart';
import 'package:components/src/src/pages/avatar_page.dart';
import 'package:components/src/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

return <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
        'card': (BuildContext context) => CardPage(),
        'inputs': (BuildContext context) => InputPage(),
        'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
      };
}
