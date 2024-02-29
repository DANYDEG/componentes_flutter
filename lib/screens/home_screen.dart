import 'package:flutter/material.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/inputs_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
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
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.archive_rounded),),


            title: Text(
              'Entradas',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Diferentes widgets para entradas de flutter',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),

            // trailing: const CircularProgressIndicator(
            //   value: 0.15,
            //   strokeWidth: 10.0,
            //   color: AppTheme.mainColor,
            //   backgroundColor: Color.fromARGB(255, 50, 50, 50),
            // ),

            trailing: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.accessibility_new_rounded),


            ),
            onTap:() {
              final ruta1 = MaterialPageRoute(builder: (context){
                return const InputsScreen();
              });
              Navigator.push(context, ruta1);
            },
          ),

          const Divider(),


          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.list_alt_rounded),),


            title: Text(
              'ListView.builder',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Scroll infinito',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.add_reaction_outlined),


            ),
            onTap:() {
              final ruta2 = MaterialPageRoute(builder: (context){
                return const InfiniteListScreen();
              });
              Navigator.push(context, ruta2);
            },
          ),
          const Divider(),


          ListTile(


            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.notification_add),
            ),
            

            title: Text(
              'Notificaciones',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Creacion de notificaciones',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.assist_walker_sharp),


            ),
            onTap:() {
              final ruta3 = MaterialPageRoute(builder: (context){
                return const NotificationsScreen();
              });
              Navigator.push(context, ruta3);
            },
          ),
        ],
      ),
    );
  }
}
