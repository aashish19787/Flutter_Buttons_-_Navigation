import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            children: [

              const SizedBox(height: 20),

              // Profile Icon
              const CircleAvatar(
                radius: 55,
                child: Icon(
                  Icons.person,
                  size: 60,
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                'Student Profile',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              const ListTile(
                leading: Icon(Icons.person),
                title: Text('Name'),
                subtitle: Text('Aashish Thapa'),
              ),

              const ListTile(
                leading: Icon(Icons.school),
                title: Text('Role'),
                subtitle: Text('Software Engineering Student'),
              ),

              const ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: Text('student@example.com'),
              ),

              const Spacer(),

              // Edit Profile
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Edit Profile selected'),
                      ),
                    );
                  },
                  icon: const Icon(Icons.edit),
                  label: const Text('Edit Profile'),
                ),
              ),

              const SizedBox(height: 12),

              // Navigator.pop()
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Back to Button Gallery'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}