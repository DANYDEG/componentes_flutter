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
                'Hola mundo 1',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              subtitle: const Text('Como tan muchacho'),
              trailing: const Icon(Icons.accessibility_new_rounded),
            ),  

            const Divider(),      
            ListTile(
              leading: const Icon(Icons.accessible_forward_rounded),
              title: Text('Ta ocupao',style: Theme.of(context).textTheme.headlineLarge,),
              subtitle: const Text('Yo a ute lo veo muy bien',),
              trailing: const Icon(Icons.add_reaction_outlined),
            ),        
            const Divider(),      
            ListTile(
              leading: const Icon(Icons.alternate_email_sharp),
              title: Text('Hola mundo 3', style: Theme.of(context).textTheme.headlineLarge,),
              subtitle: const Text('Se merecen una recompensa, velda?'),
              trailing: const Icon(Icons.assist_walker_sharp),
            ),        
          ],
        ),
      );
  }
}