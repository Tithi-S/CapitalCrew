import 'package:flutter/material.dart';
import 'eductabs/blogs.dart'; // Import the BlogsPage widget
import 'eductabs/financeshorts.dart'; // Import the VerticalPagesWidget
import 'eductabs/insights.dart'; // Import the CompanyInsightsPage widget
import 'eductabs/resources.dart'; // Import the ResourcesPage widget

class EducationTab extends StatelessWidget {
  const EducationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Education Tab'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            childAspectRatio: 0.75,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            List<String> captions = [
              'User Diaries',
              'Company Insights',
              'Finance Resources',
              'Finance Feed'
            ];
            List<String> imageUrls = [
              'assets/images/education_$index.jpg',
              'assets/images/education_$index.jpg',
              'assets/images/education_$index.jpg',
              'assets/images/education_$index.jpg',
            ];

            return EducationCard(
              imageUrl: imageUrls[index],
              caption: captions[index],
              onTap: () {
                if (index == 0) {
                  // Navigate to BlogsPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlogsPage(),
                    ),
                  );
                } else if (index == 1) {
                  // Navigate to CompanyInsightsPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CompanyInsightsPage(),
                    ),
                  );
                } else if (index == 2) {
                  // Navigate to ResourcesPage
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Resources(),
                    ),
                  );
                } else if (index == 3) {
                  // Navigate to VerticalPagesWidget
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerticalPagesWidget(),
                    ),
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  final String imageUrl;
  final String caption;
  final VoidCallback onTap;

  const EducationCard({
    required this.imageUrl,
    required this.caption,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                caption,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
