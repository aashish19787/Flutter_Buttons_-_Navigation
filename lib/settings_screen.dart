import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notifications = true;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),

      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [

            const Text(
              'Application Settings',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            // Notifications
            Card(
              child: SwitchListTile(
                title: const Text('Notifications'),
                subtitle: const Text(
                  'Receive application notifications',
                ),
                secondary: const Icon(Icons.notifications),
                value: notifications,
                onChanged: (value) {
                  setState(() {
                    notifications = value;
                  });
                },
              ),
            ),

            const SizedBox(height: 12),

            // Dark Mode
            Card(
              child: SwitchListTile(
                title: const Text('Dark Mode'),
                subtitle: const Text(
                  'Change application appearance',
                ),
                secondary: const Icon(Icons.dark_mode),
                value: darkMode,
                onChanged: (value) {
                  setState(() {
                    darkMode = value;
                  });
                },
              ),
            ),

            const SizedBox(height: 30),

            // Save button
            FilledButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Settings saved successfully!'),
                  ),
                );
              },
              icon: const Icon(Icons.save),
              label: const Text('Save Settings'),
            ),

            const SizedBox(height: 12),

            // Back button
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              label: const Text('Back to Button Gallery'),
            ),
          ],
        ),
      ),
    );
  }
}