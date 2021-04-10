import 'package:flutter/material.dart';
import 'package:marvel_app/Pages/MenuPage/menu_page.dart';

Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
      '/home': (_) => MenuPage(),
    };
