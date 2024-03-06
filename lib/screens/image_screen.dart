import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

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

  Widget imageWeb(){
    return Center(
      child: Image.network('https://i0.wp.com/newspack-yucatan.s3.amazonaws.com/uploads/2020/04/EWk0ww3VAAAjJ6f.jpg?w=600&ssl=1'),
    );
  }
}
