import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/image_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool valueSwitch = false;

  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  double valueSlider = 0.0;
  int selectedIndex = 0;
  int selectedRdioOption = 0; // RadioButton


  openScreen(int index){
  setState(() {
    MaterialPageRoute ruta= 
    MaterialPageRoute(builder: (context) => const HomeScreen());

    switch(index){
      case 0: 
        ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
      break;
      case 1: 
        ruta = MaterialPageRoute(builder: (context) => const InfiniteListScreen());
      break;
      case 2: 
        ruta = MaterialPageRoute(builder: (context) => const NotificationsScreen());
      break;
      case 3: 
        ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
    }


    selectedIndex = index;
    // print('selectedIndex: $selectedIndex' );
      Navigator.push(
        context, 
        ruta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaTexto(),
            entradaSwitch(),
            entradaSlider(),
            entradasRadio(),
            Text(
              '¿Ques usas para correr tus apps ?',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradaCheck(),
            const ElevatedButton(
              onPressed: null,
              child: Text(
                'Guardar',
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: AppTheme.backColor,
        unselectedItemColor: AppTheme.accentColor,
        onTap: (index) => openScreen(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: AppTheme.bk,
            ),
            label: "Inicio", 
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: AppTheme.bk,
            ),
            label: "Lista",
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_active_outlined,
              color: AppTheme.bk,
            ),
            label: "Notificaciones",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image,
              color: AppTheme.bk,
            ),
            label: "Imagenes",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.exit_to_app,
              color: AppTheme.bk,
            ),
            label: "Salir",
          ),
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodySmall,
      ),
    );
  }

  TextField entradaTexto() {
    return TextField(
      style: AppTheme.lightTheme.textTheme.headlineMedium,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Nombre',
        labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch() {
    return Row(
      children: <Widget>[
        const FlutterLogo(),
        Text(
          '¿Te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        const SizedBox(
          width: 25.0,
        ),
        Switch(
          value: valueSwitch,
          onChanged: (value) {
            setState(() {
              valueSwitch = value;
              print('Estado Switch: $valueSwitch');
            });
          },
        )
      ],
    );
  }

  Column entradaSlider() {
    return Column(
      children: [
        Text('¿Cuanto te gusta flutter?',
            style: AppTheme.lightTheme.textTheme.headlineLarge),
        Slider(
            min: 0.0,
            max: 10.0,
            value: valueSlider,
            activeColor: AppTheme.mainColor,
            inactiveColor: AppTheme.accentColor,
            thumbColor: AppTheme.mainColor,
            divisions: 10,
            label: '${valueSlider.round()}',
            onChanged: (value) {
              setState(() {
                valueSlider = value;
                print('Valor Sider: $valueSlider');
              });
            })
      ],
    );
  }

  Column entradasRadio() {
    return Column(
      children: [
        Text(
          "¿Que prefieres usar para desarrollo movil?",
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        ListTile(
          title: Text(
            'Kotlin',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1,
            child: Radio(
                value: 1,
                groupValue: selectedRdioOption,
                onChanged: (value) {
                  setState(() {
                    selectedRdioOption = value!;
                  });
                }),
          ),
        ),
        ListTile(
          title: Text(
            'Flutter',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1,
            child: Radio(
                value: 2,
                groupValue: selectedRdioOption,
                onChanged: (value) {
                  setState(() {
                    selectedRdioOption = value!;
                    print('Opcion seleccionada: $selectedRdioOption');
                  });
                }),
          ),
        ),
      ],
    );
  }

  Row entradaCheck() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Navegador',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Checkbox(
            value: isChecked1,
            onChanged: (value) {
              setState(() {
                isChecked1 = value!;
                print('valor de navegador: $isChecked1');
              });
            }),
        Text(
          'Emulador',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Checkbox(
            value: isChecked2,
            onChanged: (value) {
              setState(() {
                isChecked2 = value!;
                print('valor de emulador: $isChecked2');
              });
            }),
        Text(
          'Smartphone',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Checkbox(
            value: isChecked3,
            onChanged: (value) {
              setState(() {
                isChecked3 = value!;
                print('valor de smartphone: $isChecked3');
              });
            }),
      ],
    );
  }
}
