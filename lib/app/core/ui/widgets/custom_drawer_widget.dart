import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../themes/app_colors.dart';
import '../themes/app_images.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Wennys',
              style: TextStyle(fontSize: 20),
            ),
            accountEmail: const Text(""),
            currentAccountPicture: CircleAvatar(
              backgroundColor: AppColors.primary,
              child: Image.asset(
                AppImages.person,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Modular.to.navigate('/imc/');
            },
            child: ListTile(
              leading: Icon(
                Icons.accessibility_new,
                color: AppColors.primary,
              ),
              title: const Text('Calculadora de IMC'),
            ),
          ),
          InkWell(
            onTap: () {
              Modular.to.navigate('/tasks/');
            },
            child: ListTile(
              leading: Icon(
                Icons.playlist_add_check,
                color: AppColors.primary,
              ),
              title: const Text('Lista de Tarefas'),
            ),
          ),
        ],
      ),
    );
  }
}
