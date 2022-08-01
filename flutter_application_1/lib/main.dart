import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_routes.dart';
import 'package:flutter_application_1/page_one.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: PageOne.route,
      debugShowCheckedModeBanner: false,      
      routes: appRoutes,
    ),
  );
}
