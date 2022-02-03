import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../core/ui/themes/app_colors.dart';
import '../../core/ui/widgets/custom_app_bar_widget.dart';
import '../../core/ui/widgets/custom_drawer_widget.dart';
import '../../core/ui/widgets/input_text_widget.dart';
import 'tasks_store.dart';
import 'widgets/taks_item_listtile.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textTaskController = TextEditingController();
    TasksStore controller = Modular.get<TasksStore>();
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      drawer: const CustomDrawerWidget(),
      appBar: const CustomAppBar(title: 'Lista de Tarefas'),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: InputTextWidget(
                        noBorder: true,
                        controller: textTaskController,
                        labelText: 'Nova tarefa',
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Campo obrigatório';
                          }
                          return null;
                        },
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          controller.add(name: textTaskController.text);
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: AppColors.primary,
                          child: Text(
                            'ADD',
                            style: TextStyle(color: AppColors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Observer(builder: (_) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.tasksList.length,
                  itemBuilder: (context, index) {
                    var taks = controller.tasksList[index];
                    return TaskItemListTile(
                      task: taks,
                      onChanged: (value) {
                        controller.onChangeStatus(value: value!, index: index);
                      },
                      onDismissed: (value) {
                        controller.tasksList.removeAt(index);
                      },
                    );
                  },
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
