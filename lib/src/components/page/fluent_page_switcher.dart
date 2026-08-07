import 'package:flutter/material.dart';
import '../../theme/fluent_motion_tokens.dart';

/// Fluent 2 页面切换动画过渡效果类型 [FluentPageTransitionType]
enum FluentPageTransitionType {
  /// 淡入淡出 (Fade)
  fade,

  /// 向上微上弹 + 淡入 (Slide Up + Fade，对标 Windows/Android 页面升起动效)
  slideUp,

  /// 微缩放 + 淡入 (Scale + Fade)
  scale,

  /// 水平平移 + 淡入 (Slide Horizontal)
  slideHorizontal,
}

/// Fluent 2 通用页面切换动效容器 [FluentPageSwitcher]
///
/// 用于封装与自动化实现多页面切换时的 Fluent 2 Motion 动画过渡。
/// 支持传入 [index] 索引与 [pages] 列表，或直接传入 [child] 内容节点。
class FluentPageSwitcher extends StatelessWidget {
  /// 当前处于活动状态的 Widget (若使用 child 模式)
  final Widget? child;

  /// 当前选中的页面索引 (若使用 pages + index 模式)
  final int? index;

  /// 页面 Widget 集合 (若使用 pages + index 模式)
  final List<Widget>? pages;

  /// 过渡动画类型 (默认为 [FluentPageTransitionType.slideUp])
  final FluentPageTransitionType transitionType;

  /// 动画持续时间 (默认 FluentMotionDuration.gentle = 300ms)
  final Duration duration;

  /// 动画曲线 (默认 FluentMotionCurve.standard)
  final Curve curve;

  const FluentPageSwitcher({
    super.key,
    this.child,
    this.index,
    this.pages,
    this.transitionType = FluentPageTransitionType.slideUp,
    this.duration = FluentMotionDuration.gentle,
    this.curve = FluentMotionCurve.standard,
  });

  const FluentPageSwitcher.fade({
    super.key,
    this.child,
    this.index,
    this.pages,
    this.duration = FluentMotionDuration.gentle,
    this.curve = FluentMotionCurve.standard,
  }) : transitionType = FluentPageTransitionType.fade;

  const FluentPageSwitcher.slideUp({
    super.key,
    this.child,
    this.index,
    this.pages,
    this.duration = FluentMotionDuration.gentle,
    this.curve = FluentMotionCurve.standard,
  }) : transitionType = FluentPageTransitionType.slideUp;

  const FluentPageSwitcher.scale({
    super.key,
    this.child,
    this.index,
    this.pages,
    this.duration = FluentMotionDuration.gentle,
    this.curve = FluentMotionCurve.standard,
  }) : transitionType = FluentPageTransitionType.scale;

  /// 依据 [FluentPageTransitionType] 静态构建 Transitions
  static Widget buildTransition({
    required Widget child,
    required Animation<double> animation,
    FluentPageTransitionType type = FluentPageTransitionType.slideUp,
  }) {
    switch (type) {
      case FluentPageTransitionType.fade:
        return FadeTransition(opacity: animation, child: child);

      case FluentPageTransitionType.slideUp:
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.0, 0.05),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );

      case FluentPageTransitionType.scale:
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: Tween<double>(begin: 0.96, end: 1.0).animate(animation),
            child: child,
          ),
        );

      case FluentPageTransitionType.slideHorizontal:
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0.06, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget? activeChild = child;
    if (activeChild == null && pages != null && index != null) {
      final safeIndex = index!.clamp(0, pages!.length - 1);
      activeChild = KeyedSubtree(
        key: ValueKey<int>(safeIndex),
        child: pages![safeIndex],
      );
    }

    if (activeChild == null) return const SizedBox.shrink();

    return AnimatedSwitcher(
      duration: duration,
      switchInCurve: curve,
      switchOutCurve: curve,
      transitionBuilder: (child, animation) {
        return buildTransition(
          child: child,
          animation: animation,
          type: transitionType,
        );
      },
      child: activeChild,
    );
  }
}

/// Fluent 2 智能 Tab 选项卡专属滑动动效容器 [FluentTabSwitcher]
///
/// 基于 [PageView] 引擎构建，支持**手势拖拽滑动**与 Native 级无缝切页。
/// 遵循商业软件标准规范，默认开启 [keepAlive] 状态保持，防止 Tab 切换时丢失输入与滚动位置。
class FluentTabSwitcher extends StatefulWidget {
  /// 当前选中的 Tab 索引 (可选)
  final int? selectedIndex;

  /// Tab 选项卡对应的页面 Widget 列表
  final List<Widget> children;

  /// 绑定的 [PageController] (可选，若不传内部自动创建与管理)
  final PageController? pageController;

  /// 绑定的 [TabController] (可选，自动感应 [DefaultTabController])
  final TabController? tabController;

  /// 页面切换回调 (当通过手势滑动或外部切换改变页面时触发)
  final ValueChanged<int>? onPageChanged;

  /// 是否开启手势拖拽滑动 (默认 true)
  final bool enableGesture;

  /// 是否保持未激活 Tab 页面的组件状态与滚动位置 (符合软件规范，默认 true)
  final bool keepAlive;

  /// 切换动画持续时间 (默认 FluentMotionDuration.gentle = 300ms)
  final Duration duration;

  /// 动画曲线 (默认 FluentMotionCurve.standard)
  final Curve curve;

  const FluentTabSwitcher({
    super.key,
    required this.children,
    this.selectedIndex,
    this.pageController,
    this.tabController,
    this.onPageChanged,
    this.enableGesture = true,
    this.keepAlive = true,
    this.duration = FluentMotionDuration.gentle,
    this.curve = Curves.easeOutQuint,
  });

  @override
  State<FluentTabSwitcher> createState() => _FluentTabSwitcherState();
}

class _FluentTabSwitcherState extends State<FluentTabSwitcher> {
  late PageController _internalPageController;
  TabController? _tabController;
  int _lastIndex = 0;

  PageController get _effectivePageController =>
      widget.pageController ?? _internalPageController;

  @override
  void initState() {
    super.initState();
    final initialIndex = widget.selectedIndex ?? 0;
    _lastIndex = initialIndex;
    _internalPageController = PageController(initialPage: initialIndex);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _updateTabController();
  }

  @override
  void didUpdateWidget(FluentTabSwitcher oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.tabController != oldWidget.tabController) {
      _updateTabController();
    }

    final targetIndex = widget.selectedIndex;
    if (targetIndex != null && targetIndex != _lastIndex) {
      _lastIndex = targetIndex;
      _animateToPage(targetIndex);
    }
  }

  void _updateTabController() {
    final TabController? newCtrl =
        widget.tabController ?? DefaultTabController.maybeOf(context);
    if (newCtrl != _tabController) {
      _tabController?.removeListener(_handleTabControllerTick);
      _tabController = newCtrl;
      _tabController?.addListener(_handleTabControllerTick);
    }
  }

  void _handleTabControllerTick() {
    if (_tabController != null && mounted) {
      final index = _tabController!.index;
      if (index != _lastIndex) {
        _lastIndex = index;
        _animateToPage(index);
      }
    }
  }

  void _animateToPage(int index) {
    if (_effectivePageController.hasClients) {
      _effectivePageController.animateToPage(
        index,
        duration: widget.duration,
        curve: widget.curve,
      );
    }
  }

  @override
  void dispose() {
    _tabController?.removeListener(_handleTabControllerTick);
    if (widget.pageController == null) {
      _internalPageController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.children.isEmpty) return const SizedBox.shrink();

    final List<Widget> pages = widget.keepAlive
        ? widget.children
              .map((child) => _KeepAliveWrapper(child: child))
              .toList()
        : widget.children;

    return PageView(
      controller: _effectivePageController,
      physics: widget.enableGesture
          ? const BouncingScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      onPageChanged: (index) {
        _lastIndex = index;
        widget.onPageChanged?.call(index);
        _tabController?.animateTo(index);
      },
      children: pages,
    );
  }
}

/// 用于保留子页面状态与滚动位置的内置包装器 [_KeepAliveWrapper]
class _KeepAliveWrapper extends StatefulWidget {
  final Widget child;
  const _KeepAliveWrapper({required this.child});

  @override
  State<_KeepAliveWrapper> createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<_KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}

/// 遵循 Fluent 2 Motion 规范的原生 Navigator PageRoute 跳转页面 [FluentPageRoute]
class FluentPageRoute<T> extends PageRouteBuilder<T> {
  final WidgetBuilder builder;
  final FluentPageTransitionType transitionType;

  FluentPageRoute({
    required this.builder,
    this.transitionType = FluentPageTransitionType.slideUp,
    super.settings,
    super.transitionDuration = FluentMotionDuration.gentle,
    super.reverseTransitionDuration = FluentMotionDuration.gentle,
  }) : super(
         pageBuilder: (context, animation, secondaryAnimation) =>
             builder(context),
         transitionsBuilder: (context, animation, secondaryAnimation, child) {
           return FluentPageSwitcher.buildTransition(
             child: child,
             animation: animation,
             type: transitionType,
           );
         },
       );
}
