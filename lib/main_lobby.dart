import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/audio.dart';
import 'core/theme.dart';
import 'screens/lobby_screen.dart';

/// Lobby-only entry for web preview builds.
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Sfx.instance.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: AppColors.bgBottom,
    ),
  );
  runApp(const LobbyPreviewApp());
}

class LobbyPreviewApp extends StatelessWidget {
  const LobbyPreviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ludo Rush — Lobby',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      home: const LobbyScreen(),
    );
  }
}
