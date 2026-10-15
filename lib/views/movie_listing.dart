import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

const bodyStyle = TextStyle(color: Colors.white);

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int _quantity = 0;

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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Unko Sweater (2025)',
              style: cinemaHeaderStyle.copyWith(fontSize: 30),
            ),
            const SizedBox(height: 16),
            Text('Southsea Cinema Room', style: bodyStyle),
            const SizedBox(height: 16),
            Text('Thursday 22 Oct 2026, 18:30 - ends at 20:30',
                style: bodyStyle),
            const SizedBox(height: 16),
            Text(
              'Please note that Discounts / Membership Benefits will be applied once you have selected your tickets and seats.',
              style: bodyStyle,
            ),
            const SizedBox(height: 16),
            Text('Select Quantities (Up to 5 in total)', style: bodyStyle),
            const SizedBox(height: 16),
            Text('Tickets',
                style: bodyStyle.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Row(
              children: [
                DropdownButton<int>(
                  value: _quantity,
                  dropdownColor: cinemaSurface,
                  style: bodyStyle,
                  items: const [
                    DropdownMenuItem(value: 0, child: Text('0')),
                    DropdownMenuItem(value: 1, child: Text('1')),
                    DropdownMenuItem(value: 2, child: Text('2')),
                    DropdownMenuItem(value: 3, child: Text('3')),
                    DropdownMenuItem(value: 4, child: Text('4')),
                    DropdownMenuItem(value: 5, child: Text('5')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _quantity = value!;
                    });
                  },
                ),
                const SizedBox(width: 16),
                Text('Adult (£7.50)', style: bodyStyle),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Add to Basket'),
            )
          ],
        ),
      ),
    );
  }
}
