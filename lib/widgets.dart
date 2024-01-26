import 'package:flutter/material.dart';

void main() {
  runApp(Bc());
}

class Bc extends StatelessWidget {
  double brightnessValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Brightness Control'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Brightness Level: ${brightnessValue.toStringAsFixed(1)}',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 20.0),
              Slider(
                value: brightnessValue,
                min: 0.0,
                max: 100.0,
                onChanged: (value) {
                  // Update the brightness value when the slider is moved
                  brightnessValue = value;
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Implement logic to apply brightness settings
                  print('Brightness set to: $brightnessValue');
                },
                child: Text('Apply Brightness'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
