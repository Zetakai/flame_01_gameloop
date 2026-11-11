import 'package:flame_test/flame_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flame_01_gameloop/main.dart';

void main() {
  testWithGame<MyFirstGame>('fps counter ikut ke-load', MyFirstGame.new,
      (game) async {
    expect(game.children.contains(game.fpsCounter), isTrue);
  });
}
