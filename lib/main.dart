// lib/main.dart
import 'package:flutter/material.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final sb = ShorebirdUpdater();

  var _available = false;

  @override
  void initState() {
    super.initState();
    _available = sb.isAvailable;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shorebird 热更新演示')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (!_available) Text('当前安装的 App 不是 Shorebird 引擎构建', style: Theme.of(context).textTheme.headlineMedium) else Text('支持更新', style: Theme.of(context).textTheme.headlineMedium),
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
