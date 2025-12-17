import 'package:flutter/material.dart';
import 'package:supabase/home_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl = 'https://pcbruukijrkuumzqggma.supabase.co';
const supabasekey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBjYnJ1dWtpanJrdXVtenFnZ21hIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjU5Njg4MjgsImV4cCI6MjA4MTU0NDgyOH0.-_ujlaTtDR4n--6q5wU3m3mKaeXT_PAvrrV-QqPYXSo';
Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();
await Supabase.initialize(url: supabaseUrl, anonKey: supabasekey);
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Supabase Upload Image',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}