import 'package:flutter/material.dart';
import 'package:activity/activity1/pavlova.dart';
import 'package:activity/activity2/columnAlignment.dart';
import 'package:activity/activity2/rowAlignment.dart';
import 'package:activity/activity2/padding.dart';
import 'package:activity/activity3/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CCE106 Activities',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}

class ActivityItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final WidgetBuilder builder;

  const ActivityItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.builder,
  });
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<ActivityItem> _activities = [
    ActivityItem(
      title: 'Strawberry Pavlova',
      subtitle: 'Activity 1 • Card layout demo',
      icon: Icons.cake_outlined,
      builder: _buildPavlova,
    ),
    ActivityItem(
      title: 'Column Alignment',
      subtitle: 'Activity 2 • Column widgets',
      icon: Icons.view_stream_outlined,
      builder: _buildColumnAlignment,
    ),
    ActivityItem(
      title: 'Row Alignment',
      subtitle: 'Activity 2 • Row widgets',
      icon: Icons.table_rows_outlined,
      builder: _buildRowAlignment,
    ),
    ActivityItem(
      title: 'Padding',
      subtitle: 'Activity 2 • Padding widget',
      icon: Icons.crop_free_outlined,
      builder: _buildPadding,
    ),
    ActivityItem(
      title: 'Login',
      subtitle: 'Activity 3 • Login form',
      icon: Icons.login_outlined,
      builder: _buildLogin,
    ),
  ];

  static Widget _buildPavlova(BuildContext context) => Pavlova();
  static Widget _buildColumnAlignment(BuildContext context) => ColumnAlignment();
  static Widget _buildRowAlignment(BuildContext context) => RowAlignment();
  static Widget _buildPadding(BuildContext context) => PaddingSample();
  static Widget _buildLogin(BuildContext context) => LoginPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CCE106 Activities'), centerTitle: true),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: _activities.length,
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          final item = _activities[index];
          return Card(
            elevation: 2,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                child: Icon(
                  item.icon,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              title: Text(item.title),
              subtitle: Text(item.subtitle),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: item.builder),
              ),
            ),
          );
        },
      ),
    );
  }
}
