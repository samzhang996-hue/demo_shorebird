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

// 修改代码后，比如更改文本
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shorebird 热更新演示')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 修改这里
            Text(
              '当前版本: 1.0.1', // 改变文本
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              '🎊 这是热更新后的版本！', // 新增内容
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
            // 新增功能
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('新功能按钮！')));
              },
              child: const Text('新功能'),
            ),
          ],
        ),
      ),
    );
  }
}
