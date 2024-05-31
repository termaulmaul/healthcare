import 'package:flutter/material.dart';

class CheckPage extends StatefulWidget {
  @override
  _CheckPageState createState() => _CheckPageState();
}

class _CheckPageState extends State<CheckPage> {
  String _selectedCondition = 'HIV AIDS';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: _selectedCondition,
              items: [
                DropdownMenuItem<String>(
                  value: 'HIV AIDS',
                  child: Text('HIV AIDS'),
                ),
                DropdownMenuItem<String>(
                  value: 'Tuberculosis',
                  child: Text('Tuberculosis'),
                ),
                DropdownMenuItem<String>(
                  value: 'Malaria',
                  child: Text('Malaria'),
                ),
                DropdownMenuItem<String>(
                  value: 'Hepatitis',
                  child: Text('Hepatitis'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _selectedCondition = value ?? _selectedCondition;
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement check functionality
                print('Checking for $_selectedCondition');
              },
              child: Text('Check'),
            ),
          ],
        ),
      ),
    );
  }
}
