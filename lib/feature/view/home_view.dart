import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()

/// [HomeView] is a class that contains the home view.
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _State();
}

final class _State extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyOTYyMzUxNl5BMl5BanBnXkFtZTcwNTg0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
          // Sayfa içeriğin buraya
          const SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Text('Merhaba!'),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 125,
            right: 16,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 50,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2), // ✅ Saydam siyah
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2), // ✅ %20 beyaz border
                    width: 1,
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
