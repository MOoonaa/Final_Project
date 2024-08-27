import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        color: Colors.blue[50],
        child: Center(
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/control');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                child: Text(
                  'Control Page',
                  style:
                      TextStyle(color: Colors.black), // Set font color to black
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/analytics');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                child: Text(
                  'Analytics Page',
                  style:
                      TextStyle(color: Colors.black), // Set font color to black
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/status');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                child: Text(
                  'Status Page',
                  style:
                      TextStyle(color: Colors.black), // Set font color to black
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                child: Text(
                  'Settings Page',
                  style:
                      TextStyle(color: Colors.black), // Set font color to black
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/emergency');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                child: Text(
                  'Emergency Assistance',
                  style:
                      TextStyle(color: Colors.black), // Set font color to black
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/customization');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent),
                child: Text(
                  'Customize Theme',
                  style:
                      TextStyle(color: Colors.black), // Set font color to black
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
