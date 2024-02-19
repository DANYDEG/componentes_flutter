import 'package:flutter/material.dart';

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
              leading: const Icon(Icons.accessibility_new_sharp),
              title: Text(
                'Entradas',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: const Text('Diferentes widgets para entradas de flutter'),
              trailing: const Icon(Icons.accessibility_new_rounded),
            ),  

            const Divider(),      

            ListTile(
              leading: const Icon(Icons.list_alt_rounded),
              title: Text(
                'ListView.builder',
                style: Theme.of(context).textTheme.headlineLarge,),
              subtitle: const Text('Scroll infinito',),
              trailing: const Icon(Icons.add_reaction_outlined),
            ),        
            const Divider(),      
            ListTile(
              leading: const Icon(Icons.notification_add),
              title: Text(
                'Notificaciones',
               style: Theme.of(context).textTheme.headlineLarge,),
              subtitle: const Text('Creacion de notificaciones'),
              trailing: const Icon(Icons.assist_walker_sharp),
            ),        
          ],
        ),
      );
  }
}