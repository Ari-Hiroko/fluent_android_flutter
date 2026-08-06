import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';
import 'fluent_avatar.dart';
import 'fluent_persona.dart';

/// Fluent 2 联系人/人员选择器组件 [FluentPeoplePicker]
///
/// 移植自 Android Kotlin PeoplePickerView.kt 与 SearchBarPersonaChip.kt
class FluentPeoplePicker extends StatefulWidget {
  /// 可供选择的候选人员列表
  final List<String> availablePeople;

  /// 已选中的人员回调
  final ValueChanged<List<String>>? onChanged;

  /// 提示文本
  final String hintText;

  const FluentPeoplePicker({
    super.key,
    required this.availablePeople,
    this.onChanged,
    this.hintText = '添加联系人...',
  });

  @override
  State<FluentPeoplePicker> createState() => _FluentPeoplePickerState();
}

class _FluentPeoplePickerState extends State<FluentPeoplePicker> {
  final List<String> _selectedPeople = [];
  final TextEditingController _textController = TextEditingController();
  List<String> _filteredPeople = [];
  bool _showDropdown = false;

  @override
  void initState() {
    super.initState();
    _filteredPeople = widget.availablePeople;
  }

  void _filterPeople(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredPeople = widget.availablePeople
            .where((person) => !_selectedPeople.contains(person))
            .toList();
      } else {
        _filteredPeople = widget.availablePeople
            .where((person) =>
                !_selectedPeople.contains(person) &&
                person.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
      _showDropdown = _filteredPeople.isNotEmpty;
    });
  }

  void _addPerson(String person) {
    setState(() {
      _selectedPeople.add(person);
      _textController.clear();
      _showDropdown = false;
    });
    widget.onChanged?.call(_selectedPeople);
  }

  void _removePerson(String person) {
    setState(() {
      _selectedPeople.remove(person);
    });
    widget.onChanged?.call(_selectedPeople);
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
          decoration: BoxDecoration(
            color: theme.backgroundColor,
            borderRadius: BorderRadius.circular(theme.cornerRadius),
            border: Border.all(color: theme.dividerColor),
          ),
          child: Wrap(
            spacing: 6.0,
            runSpacing: 6.0,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              // 已选中的 Persona Chip 药丸
              ..._selectedPeople.map((person) {
                return Chip(
                  avatar: FluentAvatar(
                    name: person,
                    size: FluentAvatarSize.size24,
                  ),
                  label: Text(
                    person,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: theme.foregroundColor,
                    ),
                  ),
                  deleteIcon: const Icon(Icons.close, size: 14.0),
                  onDeleted: () => _removePerson(person),
                  backgroundColor: theme.brightness == Brightness.dark
                      ? const Color(0xFF333333)
                      : const Color(0xFFEFEFEF),
                );
              }),

              // 搜索输入框
              SizedBox(
                width: 140.0,
                child: TextField(
                  controller: _textController,
                  onChanged: _filterPeople,
                  onTap: () => _filterPeople(_textController.text),
                  style: TextStyle(
                    fontSize: 14.0,
                    color: theme.foregroundColor,
                  ),
                  decoration: InputDecoration(
                    hintText: _selectedPeople.isEmpty ? widget.hintText : '',
                    hintStyle: TextStyle(
                      fontSize: 13.0,
                      color: theme.foregroundSecondaryColor,
                    ),
                    border: InputBorder.none,
                    isDense: true,
                  ),
                ),
              ),
            ],
          ),
        ),

        // 自动完成下拉候选项
        if (_showDropdown)
          Container(
            margin: const EdgeInsets.only(top: 4.0),
            constraints: const BoxConstraints(maxHeight: 180.0),
            decoration: BoxDecoration(
              color: theme.backgroundColor,
              borderRadius: BorderRadius.circular(theme.cornerRadius),
              border: Border.all(color: theme.dividerColor),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: _filteredPeople.length,
              itemBuilder: (context, index) {
                final person = _filteredPeople[index];
                return FluentPersona(
                  name: person,
                  onTap: () => _addPerson(person),
                );
              },
            ),
          ),
      ],
    );
  }
}
