import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:buzz/utils/Colors.dart';
import 'package:buzz/utils/Constants.dart';

part 'AppStore.g.dart';

/// This class is a MobX store for managing application-wide state.
class AppStore = AppStoreBase with _$AppStore;

/// This is the base class for the application store.
abstract class AppStoreBase with Store {
  /// This observable represents whether the dark mode is on or not.
  @observable
  bool isDarkModeOn = false;

  /// This observable represents whether the hover state is on or not.
  @observable
  bool isHover = false;

  /// This observable represents the color of the icon.
  @observable
  Color? iconColor;

  /// This observable represents the background color.
  @observable
  Color? backgroundColor;

  /// This observable represents the color of the app bar.
  @observable
  Color? appBarColor;

  /// This observable represents the color of the scaffold background.
  @observable
  Color? scaffoldBackground;

  /// This observable represents the color of the secondary background.
  @observable
  Color? backgroundSecondaryColor;

  /// This observable represents the light color of the primary app color.
  @observable
  Color? appColorPrimaryLightColor;

  /// This observable represents the secondary color of the icon.
  @observable
  Color? iconSecondaryColor;

  /// This observable represents the primary color of the text.
  @observable
  Color? textPrimaryColor;

  /// This observable represents the secondary color of the text.
  @observable
  Color? textSecondaryColor;

  /// This action toggles the dark mode on or off.
  /// If a value is provided, it will set the dark mode to that value.
  /// Otherwise, it will toggle the current state.
  @action
  Future<void> toggleDarkMode({bool? value}) async {
    isDarkModeOn = value ?? !isDarkModeOn;

    if (isDarkModeOn) {
      scaffoldBackground = appBackgroundColorDark;

      appBarColor = cardBackgroundBlackDark;
      backgroundColor = Colors.white;
      backgroundSecondaryColor = Colors.white;
      appColorPrimaryLightColor = cardBackgroundBlackDark;

      iconColor = iconColorPrimary;
      iconSecondaryColor = iconColorSecondary;

      textPrimaryColor = whiteColor;
      textSecondaryColor = Colors.white54;

      textPrimaryColorGlobal = whiteColor;
      textSecondaryColorGlobal = Colors.white54;
      shadowColorGlobal = appShadowColorDark;
    } else {
      scaffoldBackground = scaffoldLightColor;

      appBarColor = Colors.white;
      backgroundColor = Colors.black;
      backgroundSecondaryColor = appSecondaryBackgroundColor;
      appColorPrimaryLightColor = appColorPrimaryLight;

      iconColor = iconColorPrimaryDark;
      iconSecondaryColor = iconColorSecondaryDark;

      textPrimaryColor = appTextColorPrimary;
      textSecondaryColor = appTextColorSecondary;

      textPrimaryColorGlobal = appTextColorPrimary;
      textSecondaryColorGlobal = appTextColorSecondary;
      shadowColorGlobal = appShadowColor;
    }
    setStatusBarColor(scaffoldBackground!);

    setValue(isDarkModeOnPref, isDarkModeOn);
  }

  /// This action toggles the hover state on or off.
  /// If a value is provided, it will set the hover state to that value.
  /// Otherwise, it will set the hover state to false.
  @action
  void toggleHover({bool value = false}) => isHover = value;
}