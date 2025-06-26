# ThemeColorKeys

**English** | [日本語](#日本語)

A Flutter package for semantic color management that provides i18n-style theme-aware color handling.

## Features

- 🎨 **Semantic Color Keys**: Use intuitive keys like `text.primary`, `surface.background`, `accent.success`
- 🌓 **Automatic Theme Adaptation**: Colors automatically adapt to light and dark themes
- 🔧 **Custom Color Registration**: Register your own application-specific colors
- 🏢 **Brand Color Support**: Built-in support for authentication provider brand colors
- 🎯 **Type Safety**: Full Flutter/Dart type safety with BuildContext integration
- 📱 **Easy Integration**: Simple API that works with existing Flutter applications

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  theme_color_keys:
    git:
      url: https://github.com/your-username/theme_color_keys.git
```

## Quick Start

### Basic Usage

```dart
import 'package:flutter/material.dart';
import 'package:theme_color_keys/theme_color_keys.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColorKeys.get(context, 'surface.primary'),
      child: Text(
        'Hello World',
        style: TextStyle(
          color: ThemeColorKeys.get(context, 'text.primary'),
        ),
      ),
    );
  }
}
```

### Using the Extension Method

```dart
import 'package:theme_color_keys/theme_color_keys.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.themeColor('surface.primary'),
      child: Text(
        'Hello World',
        style: TextStyle(
          color: context.themeColor('text.primary'),
        ),
      ),
    );
  }
}
```

## Available Color Keys

### Text Colors
- `text.primary` - Primary text color
- `text.secondary` - Secondary text color
- `text.tertiary` - Tertiary text color
- `text.disabled` - Disabled text color
- `text.inverse` - Inverse text color (for colored backgrounds)

### Surface Colors
- `surface.primary` - Primary background color
- `surface.secondary` - Secondary background color
- `surface.tertiary` - Tertiary background color
- `surface.disabled` - Disabled surface color
- `surface.subtle` - Subtle background color
- `surface.black` - Absolute black
- `surface.transparent` - Transparent
- `surface.overlay` - Modal/dialog overlay

### Accent Colors
- `accent.primary` - Primary brand color
- `accent.secondary` - Secondary accent color
- `accent.success` - Success color
- `accent.warning` - Warning color
- `accent.error` - Error color
- `accent.info` - Info color

### Color Variations
- `accent.red`, `accent.orange`, `accent.amber`, `accent.yellow`
- `accent.lime`, `accent.green`, `accent.emerald`, `accent.teal`
- `accent.cyan`, `accent.sky`, `accent.blue`, `accent.indigo`
- `accent.violet`, `accent.purple`, `accent.fuchsia`, `accent.pink`, `accent.rose`

### Border Colors
- `border.primary` - Primary border color
- `border.secondary` - Secondary border color
- `border.focus` - Focus state border color

### Icon Colors
- `icon.primary` - Primary icon color
- `icon.secondary` - Secondary icon color
- `icon.tertiary` - Tertiary icon color

### Shadow Colors
- `shadow.light` - Light shadow
- `shadow.medium` - Medium shadow
- `shadow.strong` - Strong shadow
- `shadow.subtle` - Subtle shadow

### Authentication Brand Colors
- `auth.apple.background` / `auth.apple.foreground`
- `auth.google.background` / `auth.google.foreground` / `auth.google.border`
- `auth.line.background` / `auth.line.foreground`
- `auth.kakao.background` / `auth.kakao.foreground`
- `auth.facebook.background` / `auth.facebook.foreground`
- `auth.email.background` / `auth.email.foreground`

## Custom Colors

You can register your own colors for application-specific needs:

```dart
void main() {
  // Register custom colors
  ThemeColorKeys.registerColor('app.header.background', (context, isDark) {
    return isDark ? Color(0xFF1A1A1A) : Color(0xFFFFFFFF);
  });
  
  ThemeColorKeys.registerColor('app.special.accent', (context, isDark) {
    return Color(0xFF6366F1); // Fixed color regardless of theme
  });
  
  runApp(MyApp());
}
```

## Theme Integration

ThemeColorKeys automatically detects the current theme brightness and returns appropriate colors. The colors are carefully selected to provide:

- High contrast for accessibility
- Consistent visual hierarchy
- Beautiful appearance in both light and dark themes
- Brand consistency for authentication providers

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

---

# 日本語

**[English](#themecolorkeys)** | 日本語

Flutterアプリケーション用のセマンティックカラー管理パッケージ。i18n方式でテーマ対応色管理を提供します。

## 機能

- 🎨 **セマンティックカラーキー**: `text.primary`、`surface.background`、`accent.success`などの直感的なキーを使用
- 🌓 **自動テーマ適応**: ライト・ダークテーマに自動で色が適応
- 🔧 **カスタムカラー登録**: アプリ固有の色を登録可能
- 🏢 **ブランドカラーサポート**: 認証プロバイダーのブランドカラーを内蔵サポート
- 🎯 **型安全性**: BuildContext統合によるFlutter/Dart完全型安全性
- 📱 **簡単統合**: 既存のFlutterアプリケーションで動作するシンプルなAPI

## インストール

`pubspec.yaml`ファイルに以下を追加してください：

```yaml
dependencies:
  theme_color_keys:
    git:
      url: https://github.com/your-username/theme_color_keys.git
```

## クイックスタート

### 基本的な使い方

```dart
import 'package:flutter/material.dart';
import 'package:theme_color_keys/theme_color_keys.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ThemeColorKeys.get(context, 'surface.primary'),
      child: Text(
        'こんにちは世界',
        style: TextStyle(
          color: ThemeColorKeys.get(context, 'text.primary'),
        ),
      ),
    );
  }
}
```

### 拡張メソッドの使用

```dart
import 'package:theme_color_keys/theme_color_keys.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.themeColor('surface.primary'),
      child: Text(
        'こんにちは世界',
        style: TextStyle(
          color: context.themeColor('text.primary'),
        ),
      ),
    );
  }
}
```

## 利用可能なカラーキー

### テキストカラー
- `text.primary` - プライマリテキスト色
- `text.secondary` - セカンダリテキスト色
- `text.tertiary` - ターシャリテキスト色
- `text.disabled` - 無効テキスト色
- `text.inverse` - 逆転テキスト色（色付き背景用）

### サーフェスカラー
- `surface.primary` - プライマリ背景色
- `surface.secondary` - セカンダリ背景色
- `surface.tertiary` - ターシャリ背景色
- `surface.disabled` - 無効サーフェス色
- `surface.subtle` - 微細背景色
- `surface.black` - 絶対黒
- `surface.transparent` - 透明
- `surface.overlay` - モーダル・ダイアログオーバーレイ

### アクセントカラー
- `accent.primary` - プライマリブランド色
- `accent.secondary` - セカンダリアクセント色
- `accent.success` - 成功色
- `accent.warning` - 警告色
- `accent.error` - エラー色
- `accent.info` - 情報色

### カラーバリエーション
- `accent.red`、`accent.orange`、`accent.amber`、`accent.yellow`
- `accent.lime`、`accent.green`、`accent.emerald`、`accent.teal`
- `accent.cyan`、`accent.sky`、`accent.blue`、`accent.indigo`
- `accent.violet`、`accent.purple`、`accent.fuchsia`、`accent.pink`、`accent.rose`

### ボーダーカラー
- `border.primary` - プライマリボーダー色
- `border.secondary` - セカンダリボーダー色
- `border.focus` - フォーカス状態ボーダー色

### アイコンカラー
- `icon.primary` - プライマリアイコン色
- `icon.secondary` - セカンダリアイコン色
- `icon.tertiary` - ターシャリアイコン色

### シャドウカラー
- `shadow.light` - ライトシャドウ
- `shadow.medium` - ミディアムシャドウ
- `shadow.strong` - ストロングシャドウ
- `shadow.subtle` - 微細シャドウ

### 認証ブランドカラー
- `auth.apple.background` / `auth.apple.foreground`
- `auth.google.background` / `auth.google.foreground` / `auth.google.border`
- `auth.line.background` / `auth.line.foreground`
- `auth.kakao.background` / `auth.kakao.foreground`
- `auth.facebook.background` / `auth.facebook.foreground`
- `auth.email.background` / `auth.email.foreground`

## カスタムカラー

アプリケーション固有のニーズに応じて独自の色を登録できます：

```dart
void main() {
  // カスタムカラーを登録
  ThemeColorKeys.registerColor('app.header.background', (context, isDark) {
    return isDark ? Color(0xFF1A1A1A) : Color(0xFFFFFFFF);
  });
  
  ThemeColorKeys.registerColor('app.special.accent', (context, isDark) {
    return Color(0xFF6366F1); // テーマに関係なく固定色
  });
  
  runApp(MyApp());
}
```

## テーマ統合

ThemeColorKeysは現在のテーマの明度を自動検出し、適切な色を返します。色は以下を提供するよう慎重に選択されています：

- アクセシビリティのための高コントラスト
- 一貫した視覚的階層
- ライト・ダークテーマ両方での美しい外観
- 認証プロバイダーのブランド一貫性

## 貢献

貢献を歓迎します！プルリクエストをお気軽に送信してください。

## ライセンス

このプロジェクトはMITライセンスでライセンスされています - 詳細はLICENSEファイルを参照してください。