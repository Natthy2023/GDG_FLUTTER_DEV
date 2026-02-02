import 'package:flutter/material.dart';
import '../models/news_model.dart';

class NewsDetailPage extends StatelessWidget {
  final NewsItem news;
  const NewsDetailPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(news.imageUrl, width: double.infinity, height: 250, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(news.title, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: 8),
                  Text(news.category, style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                  const Divider(height: 30),
                  Text(news.content, style: const TextStyle(fontSize: 18, height: 1.5)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}