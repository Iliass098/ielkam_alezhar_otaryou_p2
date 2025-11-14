import 'package:flutter/material.dart';
import 'package:ielkam_alezhar_otaryou_p1/views/main_view.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  const MyApp({super.key});


  // O en función flecha
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Practice 1',
        home: FirstView(),
      );
}
