import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Slightly darker grey to make the white box pop
      body: SingleChildScrollView(
        child: Column(
          children: [
            // --- Header Section ---
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Color.fromARGB(255, 137, 22, 169),
                    child: Text("DN",
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 16),
                  const Text("Daily News",
                      style: TextStyle(
                          fontSize: 28, 
                          fontWeight: FontWeight.w800, 
                          letterSpacing: -0.5)),
                  const SizedBox(height: 8),
                  Text("Your trusted source for global updates",
                      style: TextStyle(color: Colors.grey[600], fontSize: 16)),
                      SizedBox(height: 10),
                      const Text(
                            "v1.0.0",
                            style: TextStyle(
                              color: Color.fromARGB(108, 179, 29, 216),
                              backgroundColor: Color.fromARGB(54, 143, 36, 141),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                ],
              ),
            ),

            // --- Shadow Box Section ---
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  // This is the Black Shadow Effect
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(34, 0, 0, 0),
                      blurRadius: 20,
                      spreadRadius: 5,
                      offset: const Offset(0, 10), // Shadow moves downwards
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildSectionTitle("About Daily News"),
                    const SizedBox(height: 15),
                    _buildBodyText(
                        "Daily News is a premier mobile platform designed to keep you informed in a fast-paced world. We aggregate breaking news and provide in-depth analysis across technology, sports, and business categories."),
                    const SizedBox(height: 15),
                    _buildBodyText(
                        "Our mission is to provide accurate, timely, and engaging news content that empowers our readers to stay connected to the stories that matter most."),
                  ],
                ),
              ),
            ),

            // --- Contact Card ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                elevation: 0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.grey[200]!)),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.email_outlined, color: Color.fromARGB(255, 137, 22, 169)),
                      title: const Text("Contact Developer", style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: const Text("natnaelasfaw2023@gmail.com"),
                    ),
                    ListTile(
                      leading: const Icon(Icons.language, color: Color.fromARGB(255, 137, 22, 169)),
                      title: const Text("Official Website", style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: const Text("www.dailynews.com"),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildBodyText(String text) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: TextStyle(
        fontSize: 15,
        height: 1.6,
        color: Colors.grey[800],
      ),
    );
  }
}