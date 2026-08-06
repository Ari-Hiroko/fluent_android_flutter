import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';

/// 滑动渐变变换矩阵 [_SlidingGradientTransform]
///
/// 使高亮微光从容器左边缘外 (-1.5x 宽度) 平滑扫过至右边缘外 (+1.5x 宽度)，彻底解决边界剪切与卡顿停顿感。
class _SlidingGradientTransform extends GradientTransform {
  final double slidePercent;

  const _SlidingGradientTransform({required this.slidePercent});

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(bounds.width * slidePercent, 0.0, 0.0);
  }
}

/// Fluent 2 骨架屏微光加载动画 [FluentShimmer]
///
/// 移植自 Android Kotlin Shimmer.kt，具备流畅连续的淡入淡出扫光效果
class FluentShimmer extends StatefulWidget {
  /// 宽度 (默认占满父容器)
  final double width;

  /// 高度 (默认 16.0)
  final double height;

  /// 圆角半径 (默认 4.0)
  final double borderRadius;

  /// 自定义子 Widget (可选)
  final Widget? child;

  /// 扫光动画周期毫秒 (默认 1500ms)
  final int durationMs;

  const FluentShimmer({
    super.key,
    this.width = double.infinity,
    this.height = 16.0,
    this.borderRadius = 4.0,
    this.child,
    this.durationMs = 1500,
  });

  @override
  State<FluentShimmer> createState() => _FluentShimmerState();
}

class _FluentShimmerState extends State<FluentShimmer> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.durationMs),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    // Fluent 2 精密渐变色彩
    final baseColor = isDark ? const Color(0xFF2E2E2E) : const Color(0xFFE5E5E5);
    final highlightColor = isDark ? const Color(0xFF424242) : const Color(0xFFF7F7F7);

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: baseColor,
            borderRadius: BorderRadius.circular(widget.borderRadius),
            gradient: LinearGradient(
              begin: const Alignment(-1.0, -0.2),
              end: const Alignment(1.0, 0.2),
              colors: [
                baseColor,
                highlightColor,
                baseColor,
              ],
              stops: const [0.1, 0.5, 0.9],
              transform: _SlidingGradientTransform(
                slidePercent: Tween<double>(begin: -1.2, end: 1.2).evaluate(
                  CurvedAnimation(parent: _controller, curve: Curves.easeInOutSine),
                ),
              ),
            ),
          ),
          child: widget.child,
        );
      },
    );
  }
}
