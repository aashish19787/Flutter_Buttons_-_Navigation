import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Icon(
                Icons.info_outline,
                size: 70,
              ),

              const SizedBox(height: 20),

              const Text(
                'Button Gallery Details',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'This application demonstrates different '
                    'Material Design button variants and Flutter '
                    'navigation techniques.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                'Navigation Methods Demonstrated:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const ListTile(
                leading: Icon(Icons.arrow_forward),
                title: Text('Navigator.push()'),
              ),

              const ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text('Navigator.pop()'),
              ),

              const ListTile(
                leading: Icon(Icons.swap_horiz),
                title: Text('Navigator.pushReplacement()'),
              ),

              const ListTile(
                leading: Icon(Icons.route),
                title: Text('Named Routes'),
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Back'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}