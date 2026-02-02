class NewsItem {
  final String title;
  final String description;
  final String content;
  final String imageUrl;
  final String category;

  NewsItem({
    required this.title,
    required this.description,
    required this.content,
    required this.imageUrl,
    required this.category,
  });
}

final List<NewsItem> mockNews = [
  NewsItem(
    title: "The Future of Flutter",
    description: "Google's UI toolkit continues to evolve.",
    content: "Flutter is transforming how developers build apps across platforms. With its single codebase, it allows for high-performance rendering and beautiful UIs. The latest updates focus on performance improvements and broader platform support.",
    imageUrl: "https://images.unsplash.com/photo-1617042375876-a13e36734a04?q=80&w=600", // Tech/Code theme
    category: "Technology",
  ),
  NewsItem(
    title: "The Championship Final",
    description: "An intense match leads to a surprise victory.",
    content: "The sports world was shocked today as the underdogs took home the championship trophy. In a high-stakes match that went into overtime, the winning goal was scored in the final seconds.",
    // Updated to a high-action football image
    imageUrl: "https://images.unsplash.com/photo-1508098682722-e99c43a406b2?q=80&w=600", 
    category: "Sports",
  ),
  NewsItem(
    title: "Market Trends 2026",
    description: "What to expect in the upcoming fiscal year.",
    content: "Global markets are showing signs of stabilization. Experts predict a shift toward green energy investments and sustainable business practices as key drivers for the economy this year.",
    imageUrl: "https://images.unsplash.com/photo-1611974714658-058e11ca5d86?q=80&w=600", // Business/Market theme
    category: "Business",
  ),
];