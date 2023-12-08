import 'package:flutter/material.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 24.0), // Horizontal padding
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 16.0), // Space at the beginning
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'My Birthday',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "It's going to be a great birthday. We are going out for dinner at my favorite place, "
                    "then watch a movie after we go to the gelateria for ice cream and espresso.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const Divider(), // Divider line
              const SizedBox(height: 16.0), // Vertical spacing
              const Row(
                children: <Widget>[
                  Icon(
                    Icons.wb_sunny,
                    color: Colors.orange,
                    size: 24.0,
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '81° Clear',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Color(0xFFFF5733),
                        ),
                      ),
                      Text(
                        '4500 San Alpho Drive, Dallas, TX United States',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(), // Divider line
              const SizedBox(height: 16.0), // Vertical spacing
              Wrap(
                spacing: 16.0,
                runSpacing: 20.0,
                children: List.generate(
                  7,
                  (index) => Chip(
                    label: Text('Gift ${index + 1}'),
                    avatar: const Icon(
                      Icons.card_giftcard,
                      color: Colors.lightBlue,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      side: const BorderSide(color: Colors.grey),
                    ),
                    backgroundColor: Colors.grey.shade100,
                  ),
                ),
              ),
              const Divider(), // Divider line
              const SizedBox(height: 16.0), // Vertical spacing
              const Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/comida1.png'),
                    radius: 50.0,
                  ),
                  SizedBox(width: 10.0), // Space between avatars
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/comida2.png'),
                    radius: 50.0,
                  ),
                  SizedBox(width: 10.0),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/comida3.png'),
                    radius: 50.0,
                  ),
                  Spacer(), // Takes up all available space
                  Column(
                    children: <Widget>[
                      Icon(Icons.cake, color: Colors.black),
                      SizedBox(height: 8.0), // Space between icons
                      Icon(Icons.star, color: Colors.black),
                      SizedBox(height: 8.0),
                      Icon(Icons.music_note, color: Colors.black),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
