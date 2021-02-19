import 'package:flutter/material.dart';

class Planet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<String> planet = [
      'Mercury',
      'Venus',
      'Earth',
      'Mars',
      'Jupiter',
      'Saturn',
      'Uranus',
      'Neptune'
    ];

    List<String> things = [
      'Mercury is the planet closest to the sun. The distance from Mercury to the sun is only about 58 million km. With this close distance, during the day Mercurys surface temperature reaches 450 degrees Celsius and at night around 180 degrees Celsius.'
    'The planet Mercury is the smallest planet in the solar system because it only has a diameter of 4862 km and has no natural satellites. Therefore, mercury takes 88 days to circle the sun and has a rotation period of 59 days.',
      'Venus is the second closest planet to the sun which is about 108 million km away. The planet Venus does not have satellites like Earth but Venus is the brightest celestial body after the sun and moon.',
      'Earth is the third planet after Venus to circle the sun and the only planet that has life. This is characterized by the existence of a source of life in the form of water, oxygen, carbon dioxide, the ozone layer and other elements of life.'
      'Earths interaction with other objects in outer space is caused by gravity. This gravity causes the earth to interact with the sun and the moon, which are the earths natural satellites.'
    'The planet Earth has an orbit around the sun or evolves for 365.26 days, which is what we know for 1 year. The earths revolution against the sun causes a change of seasons, while the earths rotation is the earths rotation which causes day and night to occur.'
    'Earth is not shaped like a ball or a perfect circle. But there is a bulge on the equator caused by the rotation of the earth.',
      'The planet Mars is the fourth planet from the sun and the second smallest planet after Mercury which has a diameter of about 6,800 km. Mars has a distance to the sun of about 228 million km with a time of one orbit for 687 days and a rotation period of about 24.6 hours.'
    'The word Mars is taken from the Roman language which means the god of war, besides that Mars is also often referred to as the red planet because its surface is red when seen with the naked eye, this is due to the iron oxide reaction that occurs on the surface of Mars.'
    'Mars has two natural satellites, Phobos and Deimos, which are small and irregularly shaped. The characteristics of the planet Mars are a rocky planet with a thin layer of atmosphere, there are craters, powerful volcanic lava flows, valleys, deserts, and ice at the poles.',
      'Jupiter is the fifth planet from the sun and is the largest planet in the solar system. Jupiter has a surface diameter of about 142,860 km and has a volume that can accommodate 1,300 times that of Earth.'
      'Jupiter is a gas giant composed mostly of helium and hydrogen with a mass one-thousandth the mass of the Sun and 2.5 times the mass of all the planets in the Solar System.'
      'Jupiter has red gas that revolves around the center of the planet Jupiter so that it will form a giant red belt that causes a big storm on the surface of Jupiter. Please note that Jupiters rotation occurs during 9.8 hours which is about 2.5 times faster than Earth and has a revolution time of about 12 years.',
      'Saturns rings are composed of a large number of small ring components. These tiny rings are composed of frozen gas and granules. According to astronomers, these grains are the remains of a satellite that was destroyed by collisions with other planets.'
    'If we observe from Earth, observations of Saturn are not very visible, this is because Saturn is very far from the Sun so that the light reflected by Saturn is less clear.'
    'In one time to evolve around the sun, the planet Saturn takes 29.46 years. The planet Saturn also rotates or rotates on its axis. In one rotation Saturn takes 10 hours 40 minutes 24 seconds, very short compared to Earth. And every 378 days, Planet Earth and Planet Saturn and the Sun are in a straight line.',
    'Uranus is the seventh planet from the sun and is the third largest planet after Jupiter and Saturn. The planet Uranus is known as the coldest planet in the solar system. This is because the minimum temperature there can reach -224 celsius.'
    'Apart from being the coldest planet, the Planet Saturn is unique in its rotation. This planet rotates or rotates to its axis in a forward direction so that one of the poles is facing the sun. According to astronomers, one of the poles pointing towards the sun is caused by a collision with a large object that causes its rotation direction to shift and is different from other planets.'
    'This astronomical object was destroyed and made an impression when it collided with Uranus. The remainder of this destruction forms a thin ring of clouds and water vapor around the uranus.'
    'The planet Uranus has a distance from the sun of about 2,870 million km and has a diameter of about 50,100 km. One rotation of Uranus takes 11 hours and in its revolution Uranus takes around the sun about 4 years.',
      'The planet Neptune is the eighth planet counted from the Sun. Neptune is the fourth largest planet in the solar system with a diameter of about 49,530 km. According to astronomers, the mass of Neptune is 17 times bigger than that of Earth and slightly larger than that of the Planet Uranus.'
      'Neptune revolves around the sun at a distance of 4,450 million kilometers, so it takes about 164.8 years to evolve and in one cycle, Neptune takes 16.1 hours.'
      'Neptune has been named the windiest planet in the solar system, this is because Neptune has very frequent stormy winds, so any time a big storm can occur on this planet.'
      'Similar to Saturn and Uranus, the Planet Neptune also has a thin ring. In addition, Neptune is so far from the Sun that Neptunes outer atmosphere is a very cold place in the Solar System with a temperature of minus 218 degrees Celsius.'
      'Thus, an explanation of the solar system and the members of the solar system, May be Useful!',
    ];

    List<String> img = [
      'assets/images/mercury.jpeg',
      'assets/images/venus.jpg',
      'assets/images/earth.jpeg',
      'assets/images/mars.jpeg',
      'assets/images/jupiter.jpeg',
      'assets/images/saturn.jpeg',
      'assets/images/youranus.jpeg',
      'assets/images/neptune.jpeg'
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
          itemCount: planet.length,
          itemBuilder: (BuildContext context, int index) {

            final balls = planet[index].toString();
            final image = img[index].toString();
            final about = things[index].toString();

            return ListTile(
              title: Column(
                children: [
                  Image.asset(image, width: 400, height: 100, fit: BoxFit.fitWidth,),
                  Text(balls, textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Text(about, textAlign: TextAlign.center, style: TextStyle(fontSize: 18.0, color: Colors.white),),
                  )
                ],
              ),
            );
          }
          ),
    );
  }
}
