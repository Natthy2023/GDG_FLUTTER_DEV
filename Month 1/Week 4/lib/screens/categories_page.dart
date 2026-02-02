import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  final List<String> categories = const ["Technology", "Sports", "Business", "Health", "Science"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.label_outline),
          title: Text(categories[index]),
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            // Future logic: Filter news list by category
          },
        );
      },
    );
  }
}