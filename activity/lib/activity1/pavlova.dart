import 'package:flutter/material.dart';

class Pavlova extends StatelessWidget {
  const Pavlova({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nerosa_Activity 1'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ListView(
          children: [
            buildHeaderImage(),
            buildMetaData(
              'Strawberry Pavlova',
              'A strawberry pavlova is a famous dessert made from a baked meringue shell. It has a crisp, dry crust on the outside and a soft, marshmallow-like center. It is topped with thick whipped cream and fresh, juicy strawberries.',
            ),
            buildRatingRow(rating: 4, reviewCount: 120),
            const SizedBox(height: 20),
            buildRowTabs(),
          ],
        )
      ),
    );
  }

  Widget buildHeaderImage() {
    return SizedBox(
      height: 320,
      width: double.infinity,
      child: Image.asset('assets/strawberry_pavlova.png', fit: BoxFit.cover),
    );
  }

  Widget buildMetaData(String title, String description) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Text(description),
        ],
      ),
    );
  }

  Widget buildRatingRow({required int rating, required int reviewCount}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: List.generate(5, (index) {
            return Icon(
              index < rating ? Icons.star : Icons.star_border,
              size: 20,
              color: Colors.green,
            );
          }),
        ),
        const SizedBox(width: 10),
        Text(
          '$reviewCount Reviews',
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  Widget buildInfoStat({
    required IconData icon,
    required String label,
    required String value,
  }) {
    final green = Colors.green.shade600;
    return Column(
      children: [
        Icon(icon, color: green, size: 26),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.green,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.green,
          ),
        ),
      ],
    );
  }

  Widget buildRowTabs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildInfoStat(
          icon: Icons.bookmark_border,
          label: 'PREP',
          value: '25 min',
        ),
        buildInfoStat(icon: Icons.timer_outlined, label: 'COOK', value: '1 hr'),
        buildInfoStat(
          icon: Icons.bookmark_border,
          label: 'FEEDS',
          value: '4-6',
        ),
      ],
    );
  }
}
