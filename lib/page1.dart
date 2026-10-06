import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'details_screen.dart';
import 'settings_screen.dart';
import 'login_screen.dart';

class ButtonGallery extends StatelessWidget {
  const ButtonGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Gallery'),
        centerTitle: true,

        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Profile',
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Floating Action Button pressed!'),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              // Header
              const Text(
                'Material Button Gallery',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Explore different Material buttons and navigation methods.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              // ------------------------------------------------
              // 1. Elevated Button
              // ------------------------------------------------
              const Text(
                'Basic Buttons',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
                child: const Text('Open Profile'),
              ),

              const SizedBox(height: 12),

              // ------------------------------------------------
              // 2. Filled Button
              // ------------------------------------------------
              FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/details');
                },
                child: const Text('View Details'),
              ),

              const SizedBox(height: 12),

              // ------------------------------------------------
              // 3. Filled Tonal Button
              // ------------------------------------------------
              FilledButton.tonal(
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                },
                child: const Text('Open Settings'),
              ),

              const SizedBox(height: 12),

              // ------------------------------------------------
              // 4. Outlined Button
              // ------------------------------------------------
              OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Outlined Button pressed!'),
                    ),
                  );
                },
                child: const Text('Outlined Button'),
              ),

              const SizedBox(height: 12),

              // ------------------------------------------------
              // 5. Text Button
              // ------------------------------------------------
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Text Button pressed!'),
                    ),
                  );
                },
                child: const Text('Text Button'),
              ),

              const SizedBox(height: 30),

              // ------------------------------------------------
              // Buttons with Icons
              // ------------------------------------------------
              const Text(
                'Buttons with Icons',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              // 6. Button with Icon
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                icon: const Icon(Icons.person),
                label: const Text('Profile'),
              ),

              const SizedBox(height: 12),

              FilledButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/details');
                },
                icon: const Icon(Icons.info),
                label: const Text('Details'),
              ),

              const SizedBox(height: 20),

              // ------------------------------------------------
              // 7. Icon Button
              // ------------------------------------------------
              const Text(
                'Icon Button',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Home icon pressed!'),
                        ),
                      );
                    },
                    icon: const Icon(Icons.home),
                    iconSize: 35,
                    tooltip: 'Home',
                  ),

                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/settings');
                    },
                    icon: const Icon(Icons.settings),
                    iconSize: 35,
                    tooltip: 'Settings',
                  ),

                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                    icon: const Icon(Icons.person),
                    iconSize: 35,
                    tooltip: 'Profile',
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // ------------------------------------------------
              // 8. Custom Styled Button
              // ------------------------------------------------
              const Text(
                'Custom Styled Button',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Custom button pressed!'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Custom Purple Button',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // ------------------------------------------------
              // Logout
              // ------------------------------------------------
              const Text(
                'Account',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              OutlinedButton.icon(
                onPressed: () {
                  // pushReplacement removes Button Gallery
                  // from the navigation stack.
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.logout),
                label: const Text('Logout'),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}