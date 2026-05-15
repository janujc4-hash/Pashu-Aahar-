import 'package:flutter/material.dart';

void main() {
  runApp(const PashuAaharApp());
}

class PashuAaharApp extends StatelessWidget {
  const PashuAaharApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pashu-Aahar',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00141B),
      appBar: AppBar(
        backgroundColor: const Color(0xFF6DE0B5),
        elevation: 0,
        title: const Text(
          'Pashu-Aahar',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF006B4B),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Dairy Prosperity',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFFB4F4D5),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Maximize milk yield at the lowest cost.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFA8E6CF),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Quick Actions',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: actionCard(
                      Icons.pets,
                      'New Cow',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: actionCard(
                      Icons.bar_chart,
                      'Savings',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              infoCard(
                icon: Icons.add,
                title: 'Cattle Nutrition Calculator',
                subtitle:
                    'Enter breed and milk yield to generate a custom feed recipe.',
                color: const Color(0xFF006B4B),
              ),
              const SizedBox(height: 20),
              infoCard(
                icon: Icons.menu_book,
                title: 'Veterinary Tips',
                subtitle:
                    'Watch short videos on hygiene and scientific fodder storage.',
                color: const Color(0xFF01586B),
              ),
              const SizedBox(height: 40),
              const Center(
                child: Text(
                  'Scientific Farming for Villages',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget actionCard(IconData icon, String title) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        color: const Color(0xFF071D26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50,
            color: const Color(0xFF6DE0B5),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget infoCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: const Color(0xFF003B34),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 35,
            ),
          ),
          const SizedBox(width: 18),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
