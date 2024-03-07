import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';


class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
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
        ));
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
