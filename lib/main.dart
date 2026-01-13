// lib/main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shorebird Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shorebird 热更新演示'), backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.rocket_launch, size: 80, color: Colors.blue),
            const SizedBox(height: 20),
            Text('当前版本: 1.0.0', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 10),
            const Text('这是原始版本', style: TextStyle(fontSize: 18, color: Colors.grey)),
            const SizedBox(height: 40),
            // 修改这里来测试热更新
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(12)),
              child: const Text('🎉 Hello Shorebird!', style: TextStyle(fontSize: 24)),
            ),
          ],
        ),
      ),
    );
  }
}
