import 'package:flutter/material.dart';

class AboutPlanet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<String> solarSystem = [
      'The solar system is an arrangement of celestial bodies such as planets, asteroids and satellites that move around the sun.'

    'The solar system belongs to a very large part of the universe. The solar system is located in one of the galaxies in the universe called the bimasaksi galaxy (Milky Way).'

    'The bimasactic galaxy consists of billions of stars with a diameter of about 100,000 light years and the solar system is located in one of the minor belts called Orions.'

    'It is in this Orion belt that the solar system consists of the sun, planets and other celestial bodies forming an orderly arrangement'
    ];

    List<String> img = [
      'assets/images/solarsystem.jpeg',
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
          itemCount: solarSystem.length,
          itemBuilder: (BuildContext context, int index) {

            final soler = solarSystem[index].toString();
            final image = img[index].toString();

            return ListTile(
              title: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(image),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(soler, textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0,color: Colors.white),),
                  )
                ],
              ),
            );
          }
      ),
    );
  }
}
