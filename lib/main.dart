import 'package:flutter/material.dart';
import 'package:large/constants.dart';
import 'package:large/helper/back4app.dart';
import 'package:large/providers/products.dart';
import 'package:large/screens/detail/detail_screen.dart';
import 'package:provider/provider.dart';
import 'package:large/screens/home/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Back4App.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Products>(
          create: (context) => Products(),
        )
      ],
      child: MaterialApp(
        title: 'Large Boutique',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('fa'), // English, no country code
        ],
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: kBgColor,
            elevation: 0,
            iconTheme: IconThemeData(color: kTextColor),
            titleTextStyle: TextStyle(
                color: kTextColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'vazir'),
            centerTitle: true,
          ),
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder()
            },
          ),
          fontFamily: 'vazir',
          textTheme: const TextTheme(
            bodyLarge:
                TextStyle(color: kTextColor, fontSize: 18, fontFamily: 'vazir'),
            bodyMedium:
                TextStyle(color: kTextColor, fontSize: 18, fontFamily: 'vazir'),
          ),
        ),
        home: const HomeScreen(),
        routes: {
          DetailScreen.routeName: (context) => const DetailScreen(),
        },
      ),
    );
  }
}
