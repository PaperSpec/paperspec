import 'package:paperspec/home/home.dart';
import 'package:paperspec/login/login.dart';
import 'package:paperspec/library/library.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/library': (context) => const LibraryScreen(),
};
