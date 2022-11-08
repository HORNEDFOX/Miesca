import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:miesca/pages/menu_page.dart';
import 'package:miesca/pages/start_page.dart';
import 'package:miesca/ui/theme/theme.dart';
import 'package:miesca/ui/widgets/custom_behavior.dart';

import 'generated/l10n.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //final ThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(const MiestcaPage());
}

class MiestcaPage extends StatelessWidget {
  const MiestcaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: lightTheme,
      dark: darkTheme,
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        scrollBehavior: CustomBehavior(),
        debugShowCheckedModeBanner: false,
        theme: theme,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        home: const StartPage(),
        initialRoute: 'home',
        routes: <String, WidgetBuilder>{
          'home/menu': (BuildContext context) => MenuPage(),
        },
      ),
    );
  }
}
