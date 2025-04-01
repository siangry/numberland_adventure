import 'package:numberland_adventure/app/exporter/importer_app_general.dart';

class AudioManager {
  static final AudioManager _instance = AudioManager._internal();

  factory AudioManager() => _instance;

  final ValueNotifier<bool> isPlaying = ValueNotifier<bool>(true);

  AudioManager._internal();

  void playMusic() async {
    // FlameAudio.bgm.initialize();
    await FlameAudio.bgm.play('audio_bgm.mp3', volume: 0.5);
    isPlaying.value = true;
  }

  void stopMusic() {
    FlameAudio.bgm.stop();
    isPlaying.value = false;
  }

  void toggleMusic() {
    if (isPlaying.value) {
      stopMusic();
    } else {
      playMusic();
    }
  }
}
