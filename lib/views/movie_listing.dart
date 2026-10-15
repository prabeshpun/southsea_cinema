import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

const bodyStyle = TextStyle(color: Colors.white);

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Column(
        children: [
          Text('Unko Sweater (2025)', style: cinemaHeaderStyle),
          Text('Southsea Cinema Room', style: bodyStyle),
          Text('Thursday 22 Oct 2026, 18:30 - ends at 20:30', style: bodyStyle),
          Text(
            'Please note that Discounts / Membership Benefits will be applied once you have selected your tickets and seats.',
            style: bodyStyle,
          ),
          Text('Select Quantities (Up to 5 in total)', style: bodyStyle),
          Text('Tickets', style: bodyStyle),
        ],
      ),
    );
  }
}