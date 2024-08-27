import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Page'),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        color: Colors.purple[50],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('App Settings',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: Colors.purple)),
              SizedBox(height: 20),
              Card(
                elevation: 5,
                child: ListTile(
                  title: Text('Theme'),
                  subtitle: Text('Select Light or Dark Theme'),
                  trailing: Icon(Icons.palette, color: Colors.purple),
                  onTap: () {
                    Navigator.pushNamed(context,
                        '/customization'); // Navigate to CustomizationPage
                  },
                ),
              ),
              SizedBox(height: 10),
              Card(
                elevation: 5,
                child: ListTile(
                  title: Text('Notifications'),
                  subtitle: Text('Manage notification preferences'),
                  trailing: Icon(Icons.notifications, color: Colors.purple),
                  onTap: () {
                    // Navigate to notification settings or manage them
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
