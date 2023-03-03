import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';
import 'package:quiz_game/presentation/components/game_background.dart';
import 'package:quiz_game/presentation/views/main_menu/main_menu_provider.dart';
import 'package:quiz_game/presentation/views/main_menu/main_menu_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainMenuProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.transparent,
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.permanentMarkerTextTheme()),
        home: const SafeArea(child: GameBackground(child: MainMenuPage())),
      ),
    );
  }
}
