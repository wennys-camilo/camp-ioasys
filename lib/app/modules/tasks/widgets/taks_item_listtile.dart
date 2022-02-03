import '../../../core/data/models/task.dart';
import '../../../core/ui/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TaskItemListTile extends StatelessWidget {
  final Task task;
  final Function(bool?)? onChanged;
  final Function(DismissDirection)? onDismissed;
  const TaskItemListTile(
      {Key? key,
      required this.task,
      required this.onChanged,
      required this.onDismissed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Dismissible(
                  direction: DismissDirection.startToEnd,
                  onDismissed: onDismissed,
                  background: Container(
                    color: AppColors.primary,
                    child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
                  child: Theme(
                    data: ThemeData(unselectedWidgetColor: AppColors.primary),
                    child: CheckboxListTile(
                      activeColor: AppColors.primary,
                      title: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              task.status ? Icons.check_circle : Icons.error,
                              color: AppColors.primary,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(task.name),
                          ),
                        ],
                      ),
                      value: task.status,
                      onChanged: onChanged,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
