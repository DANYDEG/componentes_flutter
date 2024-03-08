import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/infinite_list_screen.dart';
import 'package:practica3/screens/notifications_screen.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';


class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {


    int selectedIndex = 0;

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
          title: Text(
            'Imagenes',
            style: AppTheme.lightTheme.textTheme.bodyMedium,
          ),
        ),
        body: ListView(
          children: [
            imageCard(),
            imageWeb(),
          ],
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

  Card imageCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: [
            const Image(
                image: AssetImage('assets/imgs/wallpaperflare.com_wallpaper(1).jpg')
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Porsche Tycan Turbo S',
                style: AppTheme.lightTheme.textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
    

  }

  Stack imageWeb(){
    return Stack(
      children: <Widget>[
        
        const Center(
          
            child: CircularProgressIndicator(),
            ),
        
        Center(
          child: SizedBox(
            height: 300,
            width: 300,
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage, 
              image: 'https://i.kym-cdn.com/entries/icons/original/000/047/822/F94F55A2-481D-41B1-8910-C358B853BBEB.jpeg'
            ),
            
            // para mostrar una imagen de la web

            // Image.network(
            //   'https://i.kym-cdn.com/entries/icons/original/000/047/822/F94F55A2-481D-41B1-8910-C358B853BBEB.jpeg'
            //   )
            ),
        ),
        ],
    );
  }
}
