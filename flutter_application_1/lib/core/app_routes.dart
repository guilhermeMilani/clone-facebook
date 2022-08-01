import 'package:flutter_application_1/page_one.dart';
import 'package:flutter_application_1/page_three.dart';
import 'package:flutter_application_1/page_two.dart';

var appRoutes = {
  PageOne.route: ((context) => const PageOne()),
  PageTwo.route: ((context) => const PageTwo()),
  PageThree.route: ((context) =>  const PageThree()),
};
