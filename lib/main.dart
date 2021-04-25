// import 'package:componentes/src/pages/home_temp.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes/routes/routes.dart';
import 'package:componentes/src/pages/alert_page.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('es', 'ES'), // Spanish, no country code
      ],
      // home: HomePage(),
      initialRoute: '/',
      routes: routes,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => AlertPage());
      },
    );
  }
}
