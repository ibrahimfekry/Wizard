import 'package:flutter/material.dart';
import 'package:harry_potter_app/app_router.dart';
import 'package:harry_potter_app/splash.dart';

void main() {
  runApp(HarryPotterApp(appRouter: AppRouter()));
}
class HarryPotterApp extends StatelessWidget {
  final AppRouter appRouter;
  const HarryPotterApp({super.key,required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
      home: SplashPage(),
    );
  }
}
