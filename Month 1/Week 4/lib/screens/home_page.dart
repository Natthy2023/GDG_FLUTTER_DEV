import 'package:flutter/material.dart';
import '../models/news_model.dart';
import 'news_detail_page.dart';
import 'categories_page.dart';
import 'about_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const NewsSiteBody(),
    const CategoriesPage(),
    const AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[400],
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view_rounded), label: 'Categories'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'About'),
        ],
      ),
    );
  }
}

class NewsSiteBody extends StatelessWidget {
  const NewsSiteBody({super.key});

  @override
  Widget build(BuildContext context) {
    // We treat the first news item as our "Main Headline"
    final mainHeadline = mockNews[0];
    final remainingNews = mockNews.sublist(1);

    return CustomScrollView(
      slivers: [
        // 1. Editorial Header
        SliverAppBar(
          floating: true,
          pinned: true,
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "DAILY GAZETTE",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 22,
              letterSpacing: 2,
              color: Colors.black,
              fontFamily: 'Serif', // Use default serif if custom not loaded
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Container(color: Colors.black, height: 1.5),
          ),
        ),

        // 2. Main Feature Story (The "Hero" Section)
        SliverToBoxAdapter(
          child: InkWell(
            onTap: () => _navigateToDetail(context, mainHeadline),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  mainHeadline.imageUrl,
                  width: double.infinity,
                  height: 280,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(mainHeadline.category.toUpperCase(),
                          style: const TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 12)),
                      const SizedBox(height: 10),
                      Text(
                        mainHeadline.title,
                        style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            height: 1.1),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        mainHeadline.description,
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey[800], height: 1.4),
                      ),
                      const SizedBox(height: 20),
                      const Divider(thickness: 1, color: Colors.black),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        // 3. The News Feed (Standard Articles)
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final news = remainingNews[index];
              return InkWell(
                onTap: () => _navigateToDetail(context, news),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(news.category.toUpperCase(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: Colors.blueGrey)),
                            const SizedBox(height: 8),
                            Text(
                              news.title,
                              style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(2),
                          child: Image.network(
                            news.imageUrl,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: remainingNews.length,
          ),
        ),
      ],
    );
  }

  void _navigateToDetail(BuildContext context, NewsItem news) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NewsDetailPage(news: news)),
    );
  }
}