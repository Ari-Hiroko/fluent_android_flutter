# LLM Context - fluent_2_flutter

Compact reference guide for LLM agents consuming or extending `fluent_2_flutter`.

## Package Imports
```dart
import 'package:fluent_2_flutter/fluent_2_flutter.dart';
```

## Quick Start
```dart
Widget build(BuildContext context) {
  return FluentTheme(
    data: FluentThemeData.light(), // or dark()
    child: Builder(
      builder: (context) {
        return MaterialApp(
          theme: FluentTheme.of(context).toMaterialTheme(),
          home: const MyPage(),
        );
      },
    ),
  );
}
```

## Public Symbol Reference

### Buttons & Controls
- `FluentButton(text: '...', style: FluentButtonStyle.primary, onPressed: ...)`
- `FluentCompoundButton(title: '...', subtitle: '...', icon: ..., onPressed: ...)`
- `FluentFloatingActionButton(icon: ..., text: '...', onPressed: ...)`
- `FluentChip(label: '...', selected: true, onPressed: ...)`

### Inputs & Search
- `FluentSearchBar(hintText: '...', onChanged: ..., onSubmitted: ...)`
- `FluentTextField(label: '...', hintText: '...', errorText: ..., helperText: ..., onChanged: ...)`

### Navigation & Bars
- `FluentTopAppBar(title: '...', subtitle: '...', style: FluentStyle.brand, actions: [...])`
- `FluentContextualCommandBar(items: [FluentCommandItem(...)])`
- `FluentTabBar(selectedIndex: 0, tabs: [FluentTabItem(...)], onTabSelected: ...)`
- `FluentPillBar(selectedIndex: 0, labels: ['A', 'B'], onSelected: ...)`

### Popups & Modals
- `showFluentPopupMenu<T>(context: context, position: offset, items: [...])`
- `showFluentDialog(context: context, title: '...', message: '...', actions: [...])`
- `showFluentBottomSheet(context: context, title: '...', child: ...)`
- `showFluentDrawer(context: context, position: FluentDrawerPosition.left, child: ...)`
- `showFluentSnackbar(context: context, message: '...', style: FluentSnackbarStyle.brand)`

### Cards & Lists
- `FluentListItem(title: '...', subtitle: '...', leading: ..., trailing: ..., onTap: ...)`
- `FluentListSubHeader(title: '...', actionText: '...', onActionTap: ...)`
- `FluentDivider(startIndent: 16.0)`

### Avatars & Personas
- `FluentAvatar(name: '...', presence: FluentPresence.available, size: FluentAvatarSize.size40)`
- `FluentAvatarGroup(avatars: [...], maxVisible: 4)`
- `FluentPersona(name: '...', subtitle: '...', avatar: ...)`
- `FluentPeoplePicker(availablePeople: [...], onChanged: ...)`

### Transients & Loading
- `FluentCircularProgressIndicator(size: 28.0)`
- `FluentLinearProgressIndicator(value: 0.5)`
- `FluentShimmer(height: 18.0, width: 200.0)`
- `FluentTooltip(message: '...', child: ...)`

### Calendar
- `FluentCalendarView(selectedDate: date, onDateSelected: ...)`
