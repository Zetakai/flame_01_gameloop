# Flame Game Loop (Tugas Kelompok)

Contoh game loop dari modul "Sesi 10 Membuat Game dengan Flame (2) Struktur Game Loop".

Tugas kelompok: warna background diganti dari merah menjadi hijau.

## Jalankan

```bash
flutter pub get
flutter run
```

## Perbedaan dengan kode di modul

Modul memakai Flame 1.0.0 yang sudah lama. Di sini memakai Flame versi baru (`^1.38.2`), jadi ada beberapa yang diganti:

- `canvas.drawPaint(Paint()..color = Colors.red)` diganti `Colors.green` (tugas kelompok). Background digambar sebelum `super.render(canvas)`.
- Mixin `FPSCounter` sudah tidak ada di Flame baru, diganti `FpsComponent` yang di-`add()` di `onLoad()`. FPS dibaca dari `fpsCounter.fps`.
- `TapDetector` dan `TapUpInfo` sudah deprecated, diganti `TapCallbacks` dan `TapUpEvent`. Posisi tap dari `event.canvasPosition`.
- `print()` diganti `debugPrint()`.
- Package `intl` tidak dipakai. Angka fps diformat dengan `toStringAsFixed(0)`.
- SDK di `pubspec.yaml` diubah dari `">=2.15.0-178.1.beta <3.0.0"` menjadi `^3.11.5` karena versi lama tidak bisa dipakai dengan Flutter sekarang.
- Test bawaan (counter) diganti test sederhana dengan `flame_test`: cek `FpsComponent` sudah masuk ke game.
