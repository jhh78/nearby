import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby/provider/system.dart';

class StyleTestScreen extends StatelessWidget {
  StyleTestScreen({super.key});

  final SystemProvider systemProvider = Get.put(SystemProvider());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("스타일 테스트"),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    "labelSmall",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    "漢字 12345 ひらがな カタカナ",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  Text(
                    "labelMedium",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Text(
                    "漢字 12345 ひらがな カタカナ",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  Text(
                    "labelLarge",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  Text(
                    "漢字 12345 ひらがな カタカナ",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  Text(
                    "bodySmall",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    "漢字 12345 ひらがな カタカナ",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  Text(
                    "bodyMedium",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    "漢字 12345 ひらがな カタカナ",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  Text(
                    "bodyLarge",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "漢字 12345 ひらがな カタカナ",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  Text(
                    "titleSmall",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    "漢字 12345 ひらがな カタカナ",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  Text(
                    "titleMedium",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "漢字 12345 ひらがな カタカナ",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  Text(
                    "titleLarge",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "漢字 12345 ひらがな カタカナ",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  Text(
                    "headlineSmall",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    "漢字 12345 ひらがな カタカナ",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  Text(
                    "headlineMedium",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "漢字 12345 ひらがな カタカナ",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  Text(
                    "headlineLarge",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    "漢字 12345 ひらがな カタカナ",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  Text(
                    "displaySmall",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Text(
                    "漢字 12345 ひらがな カタカナ",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  Text(
                    "displayMedium",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Text(
                    "漢字 12345 ひらがな カタカナ",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              Column(
                children: [
                  Text(
                    "displayLarge",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  Text(
                    "漢字 12345 ひらがな カタカナ",
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => systemProvider.toggleTheme(),
        child: const Icon(
          Icons.change_circle,
          size: 40,
        ),
      ),
    );
  }
}
