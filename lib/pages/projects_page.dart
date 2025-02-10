import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:portofolio/models/project_model.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String images = 'assets/images/';
    const String pathKa = '${images}ka/';
    const String pathAsme = '${images}asme/';
    const String pathLabs = '${images}labscib/';
    const String pathDt = '${images}dt/';
    const String pathMediPlus = '${images}mediplus/';
    const String pathReps = '${images}reps_id/';
    const String pathKresna = '${images}kresna/';
    const String pathFengshui = '${images}fengshui/';
    const String pathMyAmbarrukmo = '${images}my_ambarrukmo/';
    const String pathTda = '${images}tda/';

    final projects = <ProjectModel>[
      ProjectModel(
        title: 'KiriminAja',
        description:
            'KiriminAja is a package delivery and supply chain solution aggregator company that is connected to various expeditions.',
        images: [
          '${pathKa}image_1.png',
          '${pathKa}image_2.png',
          '${pathKa}image_3.png',
          '${pathKa}image_4.png',
          '${pathKa}image_5.png',
          '${pathKa}image_6.png',
        ],
      ),
      ProjectModel(
        title: 'Perhutani E-Office',
        description:
            'Office management app for document processing and organizational workflows.',
        images: [
          '${pathAsme}image_1.jpg',
          '${pathAsme}image_2.jpg',
          '${pathAsme}image_3.jpg',
          '${pathAsme}image_4.jpg',
          '${pathAsme}image_5.jpg',
        ],
      ),
      ProjectModel(
        title: 'Labschool Cibubur',
        description:
            'School companion app, focusing on user-friendly design and academic management tools.',
        images: [
          '${pathLabs}image_1.png',
          '${pathLabs}image_2.png',
          '${pathLabs}image_3.png',
        ],
      ),
      ProjectModel(
        title: 'Samil DT Peduli',
        description:
            'Samil DT Peduli serves as a dedicated tool to support the activities and responsibilities of Amil Santri within the DT Peduli organization.',
        images: [
          '${pathDt}image_1.png',
          '${pathDt}image_2.png',
          '${pathDt}image_3.png',
          '${pathDt}image_4.png',
        ],
      ),
      ProjectModel(
        title: 'MediPlus',
        description:
            'A health management app featuring custom widgets, Google Maps integration, and appointment scheduling.',
        images: [
          '${pathMediPlus}image_1.jpg',
          '${pathMediPlus}image_2.jpg',
          '${pathMediPlus}image_3.jpg',
          '${pathMediPlus}image_4.jpg',
          '${pathMediPlus}image_5.jpg',
        ],
      ),
      ProjectModel(
        title: 'Reps.id',
        description:
            'A gym consultation app providing personalized workout and fitness guidance.',
        images: [
          '${pathReps}image_1.jpeg',
          '${pathReps}image_2.jpeg',
          '${pathReps}image_3.jpeg',
          '${pathReps}image_4.jpeg',
          '${pathReps}image_5.jpeg',
        ],
      ),
      ProjectModel(
        title: 'Kresna Reksa',
        description:
            'A loan application designed for seamless financial transactions and loan management.',
        images: [
          '${pathKresna}image_1.jpeg',
          '${pathKresna}image_2.jpeg',
          '${pathKresna}image_3.jpeg',
          '${pathKresna}image_4.jpeg',
        ],
      ),
      ProjectModel(
        title: 'Hello Fengshui',
        description:
            'An app focused on Fengshui consultations, offering personalized insights and recommendations.',
        images: [
          '${pathFengshui}image_1.png',
          '${pathFengshui}image_2.png',
        ],
      ),
      ProjectModel(
        title: 'My Ambarrukmo',
        description:
            'A lifestyle app integrating event management, loyalty programs, and in-app purchases.',
        images: [
          '${pathMyAmbarrukmo}image_1.jpg',
          '${pathMyAmbarrukmo}image_2.jpg',
          '${pathMyAmbarrukmo}image_3.jpg',
          '${pathMyAmbarrukmo}image_4.jpg',
          '${pathMyAmbarrukmo}image_5.jpg',
        ],
      ),
      ProjectModel(
        title: 'Tour de Ambarrukmo',
        description:
            'Cycling event app with live tracking, user registration, and result boards.',
        images: [
          '${pathTda}image_1.jpg',
          '${pathTda}image_2.jpg',
          '${pathTda}image_3.jpg',
          '${pathTda}image_4.jpg',
        ],
      ),
      ProjectModel(
        title: 'Portfolio Website',
        description:
            'A neo-brutalism style portfolio website built with Flutter and neubrutalism_ui package.',
        images: [],
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.blue[100],
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
                'MY PROJECTS',
                style: TextStyle(
                  fontFamily: 'VcrOsdMono',
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              ResponsiveGridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                alignment: Alignment.center,
                gridDelegate: ResponsiveGridDelegate(
                  crossAxisExtent:
                      ResponsiveBreakpoints.of(context).isMobile ? 300 : 400,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 3 / 2,
                ),
                maxRowCount: null,
                itemBuilder: (context, index) {
                  if (index >= projects.length) return const SizedBox();

                  return NeuCard(
                    cardColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            projects[index].title,
                            style: const TextStyle(
                              fontFamily: 'VcrOsdMono',
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Visibility(
                            visible:
                                ResponsiveBreakpoints.of(context).largerThan(
                              MOBILE,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                Text(
                                  projects[index].description,
                                  style: const TextStyle(
                                    fontFamily: 'OverpassMono',
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          NeuTextButton(
                            enableAnimation: true,
                            onPressed: () => context.push(
                              '/projects-detail',
                              extra: ProjectModel(
                                title: projects[index].title,
                                description: projects[index].description,
                                images: projects[index].images,
                              ),
                            ),
                            buttonColor: Colors.green[200]!,
                            buttonWidth: 150,
                            text: const Text(
                              'View Project',
                              style: TextStyle(
                                fontFamily: 'OverpassMono',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: projects.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
