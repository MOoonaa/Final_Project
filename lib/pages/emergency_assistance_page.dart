import 'package:flutter/material.dart';

class EmergencyAssistancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Assistance'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          color: Colors.red[50],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Emergency Assistance',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: Colors.red)),
              SizedBox(height: 20),
              Card(
                elevation: 5,
                child: ListTile(
                  title: Text('Emergency Contact 1'),
                  subtitle: Text('911'),
                  trailing: Icon(Icons.phone, color: Colors.red),
                ),
              ),
              SizedBox(height: 10),
              Card(
                elevation: 5,
                child: ListTile(
                  title: Text('Emergency Contact 2'),
                  subtitle: Text('Local Police Department'),
                  trailing: Icon(Icons.phone, color: Colors.red),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add functionality to send SOS alert
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text('Send SOS Alert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
