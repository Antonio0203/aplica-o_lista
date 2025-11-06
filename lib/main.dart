import 'package:flutter/material.dart';

void main() {
  runApp(const ListaMenorQueCincoApp());
}

class ListaMenorQueCincoApp extends StatelessWidget {
  const ListaMenorQueCincoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Números menores que 5',
      debugShowCheckedModeBanner: false, // remove o selo "DEBUG"
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ListaScreen(),
    );
  }
}

class ListaScreen extends StatelessWidget {
  const ListaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de números
    List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

    // Filtra apenas os menores que 5
    List<int> menoresQueCinco = a.where((num) => num < 5).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Elementos menores que 5'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Lista original:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(a.join(', '), style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            const Text(
              'Elementos menores que 5:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Exibe o resultado dinamicamente
            for (var num in menoresQueCinco)
              Text(
                num.toString(),
                style: const TextStyle(fontSize: 16),
              ),
          ],
        ),
      ),
    );
  }
}
