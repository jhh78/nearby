import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StyleTestScreen extends StatelessWidget {
  const StyleTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("스타일 테스트"),
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
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
                  SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
