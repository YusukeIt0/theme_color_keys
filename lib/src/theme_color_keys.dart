import 'package:flutter/material.dart';

/// ThemeColorKeys - Semantic Color Management System
/// 
/// Provides i18n-style semantic color management for Flutter applications.
/// This system allows you to manage colors using semantic keys that automatically
/// adapt to light and dark themes.
/// 
/// ## Usage
/// ```dart
/// ThemeColorKeys.get(context, 'text.primary')
/// ThemeColorKeys.get(context, 'surface.background')
/// ThemeColorKeys.get(context, 'accent.primary')
/// ```
/// 
/// ## セマンティックカラー管理システム
/// 
/// i18n方式でFlutterアプリの色を管理するシステムです。
/// セマンティックキーを使用して、ライト・ダークテーマに自動対応する色管理を提供します。
/// 
/// ## 使用方法
/// ```dart
/// ThemeColorKeys.get(context, 'text.primary')
/// ThemeColorKeys.get(context, 'surface.background')
/// ThemeColorKeys.get(context, 'accent.primary')
/// ```
class ThemeColorKeys {
  
  /// Get color by semantic key
  /// 
  /// Returns the appropriate color for the given key based on the current theme
  /// (light or dark mode). All keys are automatically theme-aware.
  /// 
  /// セマンティックキーでカラーを取得
  /// 
  /// 現在のテーマ（ライト・ダークモード）に基づいて適切な色を返します。
  /// 全てのキーは自動的にテーマ対応しています。
  static Color get(BuildContext context, String key) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return _getColorByKey(context, key, isDark);
  }
  
  /// Register custom color mappings
  /// 
  /// Allows you to register your own color keys and values.
  /// This is useful for app-specific colors.
  /// 
  /// カスタムカラーマッピングを登録
  /// 
  /// 独自の色キーと値を登録できます。
  /// アプリ固有の色に便利です。
  static final Map<String, Color Function(BuildContext, bool)> _customColors = {};
  
  static void registerColor(String key, Color Function(BuildContext context, bool isDark) colorFunction) {
    _customColors[key] = colorFunction;
  }
  
  /// Color key definition mapping
  /// 
  /// This method contains all the built-in semantic color definitions.
  /// Colors are automatically adapted for light and dark themes.
  /// 
  /// カラーキー定義マッピング
  /// 
  /// 組み込みセマンティック色定義が含まれます。
  /// 色は自動的にライト・ダークテーマに適応されます。
  static Color _getColorByKey(BuildContext context, String key, bool isDark) {
    final theme = Theme.of(context);
    
    // Check custom colors first
    if (_customColors.containsKey(key)) {
      return _customColors[key]!(context, isDark);
    }
    
    // ========== TEXT COLORS ==========
    // Primary text - most important content
    if (key == 'text.primary') {
      return isDark ? const Color(0xFFF1F5F9) : const Color(0xFF1E293B);
    }
    // Secondary text - supporting content
    if (key == 'text.secondary') {
      return isDark ? const Color(0xFF94A3B8) : const Color(0xFF64748B);
    }
    // Tertiary text - least important content
    if (key == 'text.tertiary') {
      return isDark ? const Color(0xFF6B7280) : const Color(0xFF9CA3AF);
    }
    // Disabled text - non-interactive content
    if (key == 'text.disabled') {
      return isDark ? const Color(0xFF4B5563) : const Color(0xFFD1D5DB);
    }
    // Inverse text - text on colored backgrounds
    if (key == 'text.inverse') {
      return isDark ? const Color(0xFF1E293B) : const Color(0xFFFFFFFF);
    }
    
    // ========== SURFACE COLORS ==========
    // Primary surface - main background
    if (key == 'surface.primary') {
      return isDark ? const Color(0xFF1E293B) : const Color(0xFFFFFFFF);
    }
    // Secondary surface - elevated background
    if (key == 'surface.secondary') {
      return isDark ? const Color(0xFF374151) : const Color(0xFFF8FAFC);
    }
    // Tertiary surface - further elevated
    if (key == 'surface.tertiary') {
      return isDark ? const Color(0xFF4B5563) : const Color(0xFFF1F5F9);
    }
    // Disabled surface - non-interactive surfaces
    if (key == 'surface.disabled') {
      return isDark ? const Color(0xFF374151) : const Color(0xFFF8FAFC);
    }
    // Subtle surface - very light background
    if (key == 'surface.subtle') {
      return isDark ? const Color(0xFF0F172A) : const Color(0xFFFAFAFA);
    }
    // Black surface - absolute black
    if (key == 'surface.black') {
      return Colors.black;
    }
    // Transparent surface
    if (key == 'surface.transparent') {
      return Colors.transparent;
    }
    // Overlay surface - for modals/dialogs
    if (key == 'surface.overlay') {
      return isDark ? Colors.white.withValues(alpha: 0.1) : Colors.white.withValues(alpha: 0.2);
    }
    
    // ========== ACCENT COLORS ==========
    // Primary accent - main brand color
    if (key == 'accent.primary') {
      return isDark ? const Color(0xFF60A5FA) : const Color(0xFF4285F4);
    }
    // Secondary accent
    if (key == 'accent.secondary') {
      return isDark ? const Color(0xFF34D399) : const Color(0xFF10B981);
    }
    // Success color
    if (key == 'accent.success') {
      return const Color(0xFF10B981);
    }
    // Warning color
    if (key == 'accent.warning') {
      return const Color(0xFFF59E0B);
    }
    // Error color
    if (key == 'accent.error') {
      return const Color(0xFFEF4444);
    }
    // Info color
    if (key == 'accent.info') {
      return const Color(0xFF3B82F6);
    }
    
    // Color variations
    if (key == 'accent.red') {
      return const Color(0xFFEF4444);
    }
    if (key == 'accent.orange') {
      return const Color(0xFFF97316);
    }
    if (key == 'accent.amber') {
      return const Color(0xFFF59E0B);
    }
    if (key == 'accent.yellow') {
      return const Color(0xFFEAB308);
    }
    if (key == 'accent.lime') {
      return const Color(0xFF84CC16);
    }
    if (key == 'accent.green') {
      return const Color(0xFF22C55E);
    }
    if (key == 'accent.emerald') {
      return const Color(0xFF10B981);
    }
    if (key == 'accent.teal') {
      return const Color(0xFF14B8A6);
    }
    if (key == 'accent.cyan') {
      return const Color(0xFF06B6D4);
    }
    if (key == 'accent.sky') {
      return const Color(0xFF0EA5E9);
    }
    if (key == 'accent.blue') {
      return const Color(0xFF3B82F6);
    }
    if (key == 'accent.indigo') {
      return const Color(0xFF6366F1);
    }
    if (key == 'accent.violet') {
      return const Color(0xFF8B5CF6);
    }
    if (key == 'accent.purple') {
      return const Color(0xFFA855F7);
    }
    if (key == 'accent.fuchsia') {
      return const Color(0xFFD946EF);
    }
    if (key == 'accent.pink') {
      return const Color(0xFFEC4899);
    }
    if (key == 'accent.rose') {
      return const Color(0xFFF43F5E);
    }
    
    // ========== BORDER COLORS ==========
    // Primary border - main borders
    if (key == 'border.primary') {
      return isDark ? const Color(0xFF374151) : const Color(0xFFE2E8F0);
    }
    // Secondary border - subtle borders
    if (key == 'border.secondary') {
      return isDark ? const Color(0xFF4B5563) : const Color(0xFFF1F5F9);
    }
    // Focus border - interactive elements
    if (key == 'border.focus') {
      return isDark ? const Color(0xFF60A5FA) : const Color(0xFF4285F4);
    }
    
    // ========== ICON COLORS ==========
    // Primary icon - main icons
    if (key == 'icon.primary') {
      return isDark ? const Color(0xFFF1F5F9) : const Color(0xFF1E293B);
    }
    // Secondary icon - supporting icons
    if (key == 'icon.secondary') {
      return isDark ? const Color(0xFF94A3B8) : const Color(0xFF64748B);
    }
    // Tertiary icon - subtle icons
    if (key == 'icon.tertiary') {
      return isDark ? const Color(0xFF6B7280) : const Color(0xFF94A3B8);
    }
    
    // ========== SHADOW COLORS ==========
    // Light shadow
    if (key == 'shadow.light') {
      return Colors.black.withValues(alpha: isDark ? 0.1 : 0.05);
    }
    // Medium shadow
    if (key == 'shadow.medium') {
      return Colors.black.withValues(alpha: isDark ? 0.2 : 0.1);
    }
    // Strong shadow
    if (key == 'shadow.strong') {
      return Colors.black.withValues(alpha: isDark ? 0.3 : 0.15);
    }
    // Subtle shadow
    if (key == 'shadow.subtle') {
      return Colors.black.withValues(alpha: isDark ? 0.05 : 0.03);
    }
    
    // ========== CONTROL COLORS ==========
    // Disabled controls
    if (key == 'control.disabled') {
      return isDark ? const Color(0xFF4B5563) : const Color(0xFFD1D5DB);
    }
    
    // ========== BRAND COLORS (FIXED) ==========
    // These colors don't change with theme for brand consistency
    
    // Apple brand colors
    if (key == 'auth.apple.background') {
      return Colors.black;
    }
    if (key == 'auth.apple.foreground') {
      return Colors.white;
    }
    
    // Google brand colors
    if (key == 'auth.google.background') {
      return Colors.white;
    }
    if (key == 'auth.google.foreground') {
      return const Color(0xFF3C4043);
    }
    if (key == 'auth.google.border') {
      return const Color(0xFFDADCE0);
    }
    
    // LINE brand colors
    if (key == 'auth.line.background') {
      return const Color(0xFF00B900);
    }
    if (key == 'auth.line.foreground') {
      return Colors.white;
    }
    
    // Kakao brand colors
    if (key == 'auth.kakao.background') {
      return const Color(0xFFFEE500);
    }
    if (key == 'auth.kakao.foreground') {
      return const Color(0xFF3C1E1E);
    }
    
    // Facebook brand colors
    if (key == 'auth.facebook.background') {
      return const Color(0xFF1877F2);
    }
    if (key == 'auth.facebook.foreground') {
      return Colors.white;
    }
    
    // Email auth colors
    if (key == 'auth.email.background') {
      return const Color(0xFFF5F5F5);
    }
    if (key == 'auth.email.foreground') {
      return const Color(0xFF1A1A1A);
    }
    
    // Fallback to theme colors or default
    return theme.colorScheme.primary;
  }
}