import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Status Page'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: Colors.orange[50],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Smart Car Status',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: Colors.orange)),
              SizedBox(height: 20),
              Card(
                elevation: 5,
                child: ListTile(
                  title: Text('Battery Level'),
                  subtitle: Text('85%'),
                  trailing:
                      Icon(Icons.battery_charging_full, color: Colors.orange),
                ),
              ),
              SizedBox(height: 10),
              Card(
                elevation: 5,
                child: ListTile(
                  title: Text('Connection Status'),
                  subtitle: Text('Connected'),
                  trailing: Icon(Icons.signal_wifi_4_bar, color: Colors.orange),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
