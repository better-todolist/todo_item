library todo_item;

import 'package:flutter/cupertino.dart';
import 'package:todo_record/record/todo_record.dart';
import 'package:todo_record/tag.dart';

class TodoItemTile extends StatefulWidget {
  final TagMap tagMap;
  final TodoRecord record;
  final Function(TodoRecord)? onUpdate;
  final TodoRecord Function(TodoRecord)? onEntryEdit;

  // 可能需要其他fields 可以酌情添加

  const TodoItemTile(this.record,
      {super.key, this.onUpdate, this.onEntryEdit, this.tagMap = const {}});

  @override
  State<StatefulWidget> createState() => TodoItemTileState();
}

class TodoItemTileState extends State<TodoItemTile> {
  late TodoRecord record;
  TodoItemTileState() {
    record = widget.record;
  }

  /// 要求实现以下功能
  ///
  /// UI 显示参考 原型
  ///
  /// 1. 内部的任何一个sub todo 标记为完成后，会调用回调函数 `onUpdate`
  /// 2. 当点击右侧的编辑时，也会调用对应的 `onEntryEdit`
  /// 3. 点击本身时，会展开自身和全部group, 如果有group 全部完成了，可以不展开
  ///
  /// ## 注意
  /// 1. 如果record 中的group 长度为 0 那就是一个只有标题的todo Item,
  /// 使用 [ListTile](https://www.geeksforgeeks.org/listtile-widget-in-flutter/)
  /// 2. 如果 record 中group 长度为 1 且 group.title 为 null, 表示为只有单级的todo Item, 展开内容直接使用 SingleTodoItem 不使用 TodoGroup,
  /// 3. 如果 record 中 group 长度 > 1 且每一个 group title 均非 null, 那就是带分组的`Todo Item`，展开内容使用 TdooGroup
  /// 4. 其他情况全部为异常情况，需要抛出异常
  ///
  /// ---
  ///
  /// 5. 如果 record 中的 end 的 getMod 返回的是 TimeMod.limitless 那不显示ddl, 否则显示
  /// 6. 如果需要显示ddl
  ///   - 精确到30分种 ， 格式化到分钟 如 2023/02/01 12:00
  ///   - 精确到天、精确到星期 格式化到天 如 2023/02/01
  ///   - 精确到月 格式化到月 如 2023/02
  ///   - 精确到年 格式化到年 如 2023
  ///
  /// ---
  ///
  /// 7. 优先级 显示在 title 内部，红底白字，使用 Expanded 和正文划分空间
  /// 8. tags 在 `subtitle` 中，需要自动适应屏幕宽度换行 （Wrap）
  /// 9. 正文最大行数需要小于3行
  ///
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
