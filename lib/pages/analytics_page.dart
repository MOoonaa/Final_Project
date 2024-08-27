import 'package:flutter/material.dart';

class AnalyticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analytics Page'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.blue[50],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Car Usage Analytics',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: Colors.blue)),
              SizedBox(height: 20),
              Card(
                elevation: 5,
                child: ListTile(
                  title: Text('Total Distance'),
                  subtitle: Text('120 km'),
                  trailing: Icon(Icons.map, color: Colors.blue),
                ),
              ),
              SizedBox(height: 10),
              Card(
                elevation: 5,
                child: ListTile(
                  title: Text('Total Hours'),
                  subtitle: Text('15 hours'),
                  trailing: Icon(Icons.access_time, color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
