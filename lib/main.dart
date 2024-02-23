import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/screen/SplashScreen.dart';
import 'package:buzz/store/AppStore.dart';
import 'package:buzz/utils/AppTheme.dart';
import 'package:buzz/utils/Constants.dart';
import 'package:buzz/utils/DataGenerator.dart';

// Global instance of the application store
AppStore appStore = AppStore();

// The main function of the application
void main() async {
  // Ensures that widget binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initializes the application with a list of supported languages
  await initialize(aLocaleLanguageList: languageList());

  // Toggles the dark mode based on the saved preference
  appStore.toggleDarkMode(value: getBoolAsync(isDarkModeOnPref));

  // Sets the default position of the toast messages to the bottom of the screen
  defaultToastGravityGlobal = ToastGravity.BOTTOM;

  // Runs the application
  runApp(const MyApp());
}

// The root widget of the application
class MyApp extends StatelessWidget {
  // Constructor for MyApp widget
  const MyApp({Key? key}) : super(key: key);

  // Builds the widget tree for the application
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        // Disables the debug banner
        debugShowCheckedModeBanner: false,
        // Sets the title of the application
        title: 'Buzz Shopping${!isMobile ? ' ${platformName()}' : ''}',
        // Sets the home screen of the application
        home: const SplashScreen(),
        // Sets the theme of the application based on the dark mode setting
        theme: !appStore.isDarkModeOn ? AppThemeData.lightTheme : AppThemeData.darkTheme,
        // Sets the navigator key for the application
        navigatorKey: navigatorKey,
        // Sets the scroll behavior for the application
        scrollBehavior: SBehavior(),
        // Sets the supported locales for the application
        supportedLocales: LanguageDataModel.languageLocales(),
        // Sets the locale resolution callback for the application
        localeResolutionCallback: (locale, supportedLocales) => locale,
      ),
    );
  }
}