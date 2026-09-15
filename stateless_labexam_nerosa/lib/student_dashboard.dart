import 'package:flutter/material.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text('Student Dashboard'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          buildProfileHeader(),
          const SizedBox(height: 24),
          const Text(
            'Student Information',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          buildStudentInformationCard(),
          const SizedBox(height: 24),
          const Text(
            'Subjects',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          buildSubjectCard(
            subjectName: 'Mobile App Development',
            instructorName: 'Prof. Michael Aguido Velez',
            schedule: 'Mon/Wed 8:00 AM - 10:00 AM',
          ),
          buildSubjectCard(
            subjectName: 'Database Management Systems',
            instructorName: 'Prof. Michael Aguido Velez',
            schedule: 'Tue/Thu 1:00 PM - 3:00 PM',
          ),
          buildSubjectCard(
            subjectName: 'Web Development',
            instructorName: 'Prof. Michael Aguido Velez',
            schedule: 'Fri 10:00 AM - 12:00 PM',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add subject',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildProfileHeader() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 34,
          backgroundImage: AssetImage('lib/assets/profile.png'),
        ),
        const SizedBox(width: 16),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'April Bords Nerosa',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(
                'Student ID: 545679',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Text(
                'BS Computer Science • CCE106/L',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildStudentInformationCard() {
    return const Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text('a.nerosa.545679@umindanao.edu.ph'),
          ),
          ListTile(
            leading: Icon(Icons.phone_outlined),
            title: Text('+63 918 225 2580'),
          ),
          ListTile(
            leading: Icon(Icons.location_on_outlined),
            title: Text('Davao City'),
          ),
        ],
      ),
    );
  }

  Widget buildSubjectCard({
    required String subjectName,
    required String instructorName,
    required String schedule,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: const CircleAvatar(child: Icon(Icons.book_outlined)),
        title: Text(
          subjectName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text('Instructor: $instructorName\nSchedule: $schedule'),
        ),
      ),
    );
  }
}
