import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProjectDetailPage extends StatelessWidget {
  final String title;
  final String description;
  final List<String> images;

  const ProjectDetailPage({
    super.key,
    required this.title,
    required this.description,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NeuTextButton(
                enableAnimation: true,
                onPressed: () => context.pop(),
                buttonColor: Colors.yellow[200]!,
                text: const Text(
                  '← Back',
                  style: TextStyle(
                    fontFamily: 'OverpassMono',
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                title.toUpperCase(),
                style: const TextStyle(
                  fontFamily: 'VcrOsdMono',
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              NeuCard(
                cardColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontFamily: 'OverpassMono',
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              if (images.isNotEmpty) ...[
                const Text(
                  'PROJECT GALLERY',
                  style: TextStyle(
                    fontFamily: 'VcrOsdMono',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                ResponsiveGridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  alignment: Alignment.center,
                  gridDelegate: const ResponsiveGridDelegate(
                    crossAxisExtent: 300,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1 / 2,
                  ),
                  maxRowCount: null,
                  itemBuilder: (context, index) {
                    return NeuCard(
                      cardColor: Colors.white,
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                  itemCount: images.length,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
