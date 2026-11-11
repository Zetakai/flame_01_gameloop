import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();

  runApp(GameWidget(game: MyFirstGame()));
}

class MyFirstGame extends FlameGame with TapCallbacks {
  static final fpsTextPaint =
      TextPaint(style: const TextStyle(color: Colors.black, fontSize: 12));

  // buat ngitung fps
  final FpsComponent fpsCounter = FpsComponent();

  @override
  Future<void> onLoad() async {
    // debugPrint('<game loop> onLoad() called');
    add(fpsCounter);
    await super.onLoad();
  }

  @override
  // ignore: unnecessary_overrides
  void update(double dt) {
    super.update(dt);
    // debugPrint('<game loop> update called at delta time $dt');
  }

  @override
  void render(Canvas canvas) {
    // background jadi hijau (di modul merah)
    canvas.drawPaint(Paint()..color = Colors.green);

    super.render(canvas);

    // tampilkan fps di pojok kiri atas
    String fpsString = "fps: ${fpsCounter.fps.toStringAsFixed(0)}";
    fpsTextPaint.render(canvas, fpsString, Vector2(10, 10));
    // debugPrint('<game loop> render called');
  }

  @override
  void onTapUp(TapUpEvent event) {
    debugPrint(
        '<game loop> onTap location: (${event.canvasPosition.x}, ${event.canvasPosition.y})');
  }
}
