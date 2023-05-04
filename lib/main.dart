import 'package:flutter/material.dart';
import 'package:from_scratch_app/hello_world_gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // call the constructor function of the class
        body: HelloWorldGradientContainer(
          color1: Colors.black54,
          color2: Colors.black87,
        ),
      ),
    ),
  );
}
