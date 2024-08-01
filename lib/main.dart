import 'package:flutter/material.dart';
import 'package:nft_market/presentation/pages/get_started/get_started_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NFT Marketplace',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const GetStartedPage(),
    );
  }
}
