import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.archive_rounded),
            title: Text(
              'Entradas',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Diferentes widgets para entradas de flutter',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: const Icon(
              Icons.accessibility_new_rounded,
              color: AppTheme.mainColor,
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.list_alt_rounded),
            title: Text(
              'ListView.builder',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Scroll infinito',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: const Icon(
              Icons.add_reaction_outlined,
              color: AppTheme.mainColor,
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notification_add),
            title: Text(
              'Notificaciones',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Creacion de notificaciones',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: const Icon(
              Icons.assist_walker_sharp,
              color: AppTheme.mainColor,
            ),
          ),
        ],
      ),
    );
  }
}
