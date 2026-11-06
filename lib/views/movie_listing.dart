import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';
import 'package:southsea_cinema/models/movie.dart';

const bodyStyle = TextStyle(color: Colors.white);

class MovieListing extends StatefulWidget {
  final Movie movie;

  const MovieListing({super.key, required this.movie});

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
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text("another text"),
            Text(
              '${widget.movie.title} (${widget.movie.rating})',
              style: cinemaHeaderStyle.copyWith(fontSize: 30),
            ),
            const SizedBox(height: 16),

            Text('Southsea Cinema Room', style: bodyStyle),
            const SizedBox(height: 16),
            
            Text(widget.movie.showtime, style: bodyStyle),
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

                Text(
                  'Adult (£${widget.movie.price.toStringAsFixed(2)})',
                  style: bodyStyle,
                ),
              ],
            ),
            const SizedBox(height: 16),
            
            ElevatedButton(
              onPressed: () {
                if (_quantity == 0) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please select at least one ticket.'),
                    ),
                  );
                } else {
                  // Navigate to the next page or perform any action
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Added $_quantity ticket(s) to basket.'),
                    ),
                  );
                }
              },
              child: const Text('Add to Basket'),
            )
          ],
        ),
      ),
    );
  }
}
