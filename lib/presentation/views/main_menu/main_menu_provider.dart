import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_game/utils/global_keys.dart';

class MainMenuProvider extends ChangeNotifier {
  bool _mainMenuMusicEnabled = getBoolAsync(mainMenuMusicEnabledKey);
  bool get mainMenuMusicEnabled => _mainMenuMusicEnabled;

  void setMusicEnabled() async {
    _mainMenuMusicEnabled = !_mainMenuMusicEnabled;
    await setValue(mainMenuMusicEnabledKey, _mainMenuMusicEnabled);
    notifyListeners();
  }
}
