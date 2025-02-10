import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'FAUZAN ARIF SANI',
                style: TextStyle(
                  fontFamily: 'VcrOsdMono',
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'Flutter Developer',
                style: TextStyle(
                  fontFamily: 'OverpassMono',
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              NeuTextButton(
                enableAnimation: true,
                onPressed: () async {
                  final url = Uri.parse(
                    'https://drive.google.com/file/d/1f0U9ABjVHgS_AqfQsWpXF-orKGm398gy/view?usp=share_link',
                  );
                  // Launch URL in browser
                  try {
                    await launchUrl(url);
                  } catch (e) {
                    debugPrint('Error launching URL: $e');
                  }
                },
                buttonColor: Colors.red[200]!,
                buttonWidth: 150,
                text: const Text(
                  'Download Resume',
                  style: TextStyle(
                    fontFamily: 'OverpassMono',
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ResponsiveRowColumn(
                layout: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                    ? ResponsiveRowColumnType.ROW
                    : ResponsiveRowColumnType.COLUMN,
                rowMainAxisAlignment: MainAxisAlignment.center,
                columnMainAxisAlignment: MainAxisAlignment.center,
                rowSpacing: 20,
                columnSpacing: 20,
                children: [
                  ResponsiveRowColumnItem(
                    child: NeuTextButton(
                      enableAnimation: true,
                      onPressed: () => context.push('/about'),
                      buttonColor: Colors.green[200]!,
                      text: const Text(
                        'About Me',
                        style: TextStyle(
                          fontFamily: 'OverpassMono',
                        ),
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: NeuTextButton(
                      enableAnimation: true,
                      onPressed: () => context.push('/projects'),
                      buttonColor: Colors.blue[200]!,
                      text: const Text(
                        'Projects',
                        style: TextStyle(
                          fontFamily: 'OverpassMono',
                        ),
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: NeuTextButton(
                      enableAnimation: true,
                      onPressed: () => context.push('/contact'),
                      buttonColor: Colors.pink[200]!,
                      text: const Text(
                        'Contact',
                        style: TextStyle(
                          fontFamily: 'OverpassMono',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
