# Ludo Rush — Lobby Preview

Flutter **lobby-only** web preview.

## Upload source

1. Upload full Ludo source into this repo (same structure as local `ludo_source`).
2. Keep `lib/main_lobby.dart` (already in repo) — workflow uses it for lobby-only build.
3. Push → GitHub Actions builds web → GitHub Pages.

## Preview URL

After first successful workflow + Pages enabled:

**https://gamedevraj3-ctrl.github.io/ludo-lobby-preview/**

## Enable Pages

Repo → **Settings** → **Pages** → Source: **GitHub Actions**

## Local

```bash
flutter run -d chrome -t lib/main_lobby.dart
```
