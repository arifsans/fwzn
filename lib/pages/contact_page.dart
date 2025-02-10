import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
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
              const Text(
                'CONTACT ME',
                style: TextStyle(
                  fontFamily: 'VcrOsdMono',
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              NeuCard(
                paddingData: const EdgeInsets.all(20.0),
                cardWidth: ResponsiveBreakpoints.of(context).screenWidth,
                cardColor: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Get in Touch',
                      style: TextStyle(
                        fontFamily: 'VcrOsdMono',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Email:',
                      style: TextStyle(
                        fontFamily: 'OverpassMono',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    NeuCard(
                      cardColor: Colors.blue[50],
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'arifsanimail@gmail.com',
                          style: TextStyle(
                            fontFamily: 'OverpassMono',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Phone:',
                      style: TextStyle(
                        fontFamily: 'OverpassMono',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    NeuCard(
                      cardColor: Colors.blue[50],
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          '+62 822-4228-9403',
                          style: TextStyle(
                            fontFamily: 'OverpassMono',
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Social Media:',
                      style: TextStyle(
                        fontFamily: 'OverpassMono',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        NeuTextButton(
                          enableAnimation: true,
                          onPressed: () async {
                            final url = Uri.parse(
                              'http://github.com/arifsans',
                            );
                            try {
                              await launchUrl(url);
                            } catch (e) {
                              debugPrint('Error launching URL: $e');
                            }
                          },
                          buttonColor: Colors.blue[200]!,
                          text: const Text(
                            'GitHub',
                            style: TextStyle(
                              fontFamily: 'OverpassMono',
                            ),
                          ),
                        ),
                        NeuTextButton(
                          enableAnimation: true,
                          onPressed: () async {
                            final url = Uri.parse(
                              'https://www.linkedin.com/in/fauzan-arif-sani/',
                            );
                            try {
                              await launchUrl(url);
                            } catch (e) {
                              debugPrint('Error launching URL: $e');
                            }
                          },
                          buttonColor: Colors.purple[200]!,
                          text: const Text(
                            'LinkedIn',
                            style: TextStyle(
                              fontFamily: 'OverpassMono',
                            ),
                          ),
                        ),
                        NeuTextButton(
                          enableAnimation: true,
                          onPressed: () async {
                            final url = Uri.parse(
                              'https://www.instagram.com/arifsanx/',
                            );
                            try {
                              await launchUrl(url);
                            } catch (e) {
                              debugPrint('Error launching URL: $e');
                            }
                          },
                          buttonColor: Colors.orange[200]!,
                          text: const Text(
                            'Instagram',
                            style: TextStyle(
                              fontFamily: 'OverpassMono',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
