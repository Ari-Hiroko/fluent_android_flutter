import 'package:flutter/animation.dart';

/// Fluent 2 运动与动画持续时间 Token [FluentMotionDuration]
///
/// 对齐 Microsoft Fluent 2 Design System Motion 动效规范
abstract final class FluentMotionDuration {
  /// 极速过渡 (50ms) - 用于微小的交互反馈
  static const Duration ultraFast = Duration(milliseconds: 50);

  /// 快速 (100ms) - 用于按压、选中状态改变
  static const Duration faster = Duration(milliseconds: 100);

  /// 较快 (150ms) - 用于按钮、标签、开关动画
  static const Duration fast = Duration(milliseconds: 150);

  /// 标准 (200ms) - 控件微调与通用淡入淡出
  static const Duration normal = Duration(milliseconds: 200);

  /// 柔和 (300ms) - 弹出框、对话框与面板推入
  static const Duration gentle = Duration(milliseconds: 300);

  /// 慢速 (400ms) - 大型页面切换与抽屉 Slide
  static const Duration slow = Duration(milliseconds: 400);
}

/// Fluent 2 缓动曲线 Token [FluentMotionCurve]
abstract final class FluentMotionCurve {
  /// Fluent 2 标准减速缓动曲线 (Bezier: 0.2, 0.0, 0.0, 1.0)
  static const Curve standard = Cubic(0.2, 0.0, 0.0, 1.0);

  /// 加速缓动曲线 (Bezier: 0.3, 0.0, 1.0, 1.0)
  static const Curve accelerate = Cubic(0.3, 0.0, 1.0, 1.0);

  /// 减速缓动曲线 (Bezier: 0.0, 0.0, 0.2, 1.0)
  static const Curve decelerate = Cubic(0.0, 0.0, 0.2, 1.0);

  /// 点对点位置平移动效曲线 (Bezier: 0.33, 0.0, 0.15, 1.0)
  static const Curve pointToPoint = Cubic(0.33, 0.0, 0.15, 1.0);
}
