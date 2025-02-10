import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:websafe_svg/websafe_svg.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NeuTextButton(
                onPressed: () => context.pop(),
                enableAnimation: true,
                buttonColor: Colors.yellow[200]!,
                text: const Text(
                  '← Back',
                  style: TextStyle(
                    fontFamily: 'OverpassMono',
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ResponsiveRowColumn(
                layout: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? ResponsiveRowColumnType.ROW
                    : ResponsiveRowColumnType.COLUMN,
                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                columnMainAxisAlignment: MainAxisAlignment.start,
                columnSpacing: 16,
                children: [
                  const ResponsiveRowColumnItem(
                    child: Text(
                      'ABOUT ME',
                      style: TextStyle(
                        fontFamily: 'VcrOsdMono',
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: Row(
                      children: [
                        WebsafeSvg.asset(
                          'svgs/location.svg',
                          height: ResponsiveBreakpoints.of(context)
                                  .largerThan(TABLET)
                              ? 50
                              : 24,
                          width: ResponsiveBreakpoints.of(context)
                                  .largerThan(TABLET)
                              ? 50
                              : 24,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Yogyakarta, Indonesia',
                          style: TextStyle(
                            fontFamily: 'VcrOsdMono',
                            fontSize: ResponsiveBreakpoints.of(context)
                                    .largerThan(TABLET)
                                ? 36
                                : 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              NeuCard(
                cardColor: Colors.white,
                paddingData: const EdgeInsets.all(20),
                child: const Text(
                  'I am a Flutter Developer with extensive experience in designing, developing, and maintaining high-quality mobile applications. With a strong foundation in mobile development and a passion for creating exceptional user experiences, I have successfully delivered multiple projects for various clients and companies.\n\nMy expertise includes:\n- Flutter & Dart Development\n- Mobile App Architecture\n- MethodChannel Communication\n- State Management\n- RESTful API Integration\n- Firebase Integration\n\nI have worked on various projects in different domains including healthcare, fitness, logistics, and financial services. My commitment to writing clean, maintainable code and delivering user-friendly applications has helped businesses achieve their goals and provide value to their users.',
                  style: TextStyle(
                    fontFamily: 'OverpassMono',
                    fontSize: 16,
                    height: 1.5,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'SKILLS',
                style: TextStyle(
                  fontFamily: 'VcrOsdMono',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  NeuCard(
                    cardColor: Colors.blue[200],
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Flutter',
                        style: TextStyle(
                          fontFamily: 'OverpassMono',
                        ),
                      ),
                    ),
                  ),
                  NeuCard(
                    cardColor: Colors.pink[200],
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Dart',
                        style: TextStyle(
                          fontFamily: 'OverpassMono',
                        ),
                      ),
                    ),
                  ),
                  NeuCard(
                    cardColor: Colors.purple[200],
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Kotlin',
                        style: TextStyle(
                          fontFamily: 'OverpassMono',
                        ),
                      ),
                    ),
                  ),
                  NeuCard(
                    cardColor: Colors.green[200],
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Swift',
                        style: TextStyle(
                          fontFamily: 'OverpassMono',
                        ),
                      ),
                    ),
                  ),
                  NeuCard(
                    cardColor: Colors.orange[200],
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Mobile Development',
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
