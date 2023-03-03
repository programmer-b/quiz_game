import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';
import 'package:quiz_game/presentation/components/game_button_c.dart';
import 'package:quiz_game/presentation/views/main_menu/main_menu_provider.dart';
import 'package:quiz_game/utils/global_keys.dart';
import '../../../utils/global_strings.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({Key? key}) : super(key: key);

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  final _player = AssetsAudioPlayer();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final watcher = context.watch<MainMenuProvider>();
    final reader = context.read<MainMenuProvider>();

    if (watcher.mainMenuMusicEnabled) {
      _player.stop();
    } else {
      _player.open(Audio(mainMenuMusic),
          showNotification: false, loopMode: LoopMode.single);
    }
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(appNameText,
              style: boldTextStyle(color: white, size: 29),
              textAlign: TextAlign.center),

          Column(
            children: [
              GameButtonContainer(
                child: Text(startGameText,
                    style: boldTextStyle(color: white, size: 29),
                    textAlign: TextAlign.center),
              ),
              14.height,
              GameButtonContainer(
                child: Text(categoriesText,
                    style: boldTextStyle(color: white, size: 29),
                    textAlign: TextAlign.center),
              ),
              14.height,
              GameButtonContainer(
                child: Text(settingsText,
                    style: boldTextStyle(color: white, size: 29),
                    textAlign: TextAlign.center),
              ),
            ],
          ),

          IconButton(
              color: white,
              iconSize: 28,
              onPressed: () => reader.setMusicEnabled(),
              icon: Icon(watcher.mainMenuMusicEnabled
                  ? Icons.volume_off
                  : Icons.volume_up))
          // const QuizLogo()
        ],
      ).paddingAll(8),
    ));
  }
}
