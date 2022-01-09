import 'package:projeto_app_masterclass/models/data_models.dart';
import 'package:projeto_app_masterclass/views/exercices_page/animations/animation_exercices_page.dart';
import 'package:projeto_app_masterclass/views/exercices_page/animations/controlled_animations/button/button_controlled_animations_page.dart';
import 'package:projeto_app_masterclass/views/exercices_page/animations/controlled_animations/expansiontile/expansiontile_controlled_animations_page.dart';
import 'package:projeto_app_masterclass/views/exercices_page/animations/implicity_animations/button/button_implicity_animations_page.dart';
import 'package:projeto_app_masterclass/views/exercices_page/animations/implicity_animations/expansiontile/expansiontile_implicity_animations_page.dart';
import 'package:projeto_app_masterclass/views/exercices_page/mockup/mockup_1/Pages/mockup1_page.dart';
import 'package:projeto_app_masterclass/views/exercices_page/mockup/mockup_exercices_page.dart';
import 'package:projeto_app_masterclass/views/exercices_page/mockup/mockup_tinder/pages/mockup_tinder_page.dart';
import 'package:projeto_app_masterclass/views/exercices_page/playground/playground_exercices_page.dart';

class HomeController {
  List<DataModels> listDataModels = [
    DataModels(
      iconImage: "assets/images/awesome_running.png",
      title: "Animações",
      subtitle:
          "Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos",
      count: 4,
      page: AnimationExercicesPage(),
      routes: [
        ButtonImplicityAnimationsPage(),
        ExpansionTileImplicityAnimationsPage(),
        ButtonControlledAnimationsPage(),
        ExpansionTileControlledAnimationsPage(),
      ],
    ),
    DataModels(
      iconImage: "assets/images/awesome_glasses.png",
      title: "Leitura de Mockup",
      subtitle:
          "Aplicação da técnica de leitura de mockup, contendo 2 exercícios",
      count: 2,
      page: MockupExercicesPage(),
      routes: [
        Mockup1Page(),
        MockupTinderPage(),
      ],
    ),
    DataModels(
      iconImage: "assets/images/material_toys.png",
      title: "Playground",
      subtitle: "Ambiente destinado a testes e estudos em geral",
      count: 3,
      page: PlaygroundExercicesPage(),
      routes: [],
    ),
    DataModels(
      iconImage: "assets/images/awesome_running.png",
      title: "Animações",
      subtitle:
          "Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos",
      count: 4,
      routes: [
        ButtonImplicityAnimationsPage(),
        ExpansionTileImplicityAnimationsPage(),
        ButtonControlledAnimationsPage(),
        ExpansionTileControlledAnimationsPage(),
      ],
    ),
    DataModels(
      iconImage: "assets/images/awesome_glasses.png",
      title: "Leitura de Mockup",
      subtitle:
          "Aplicação da técnica de leitura de mockup, contendo 2 exercícios",
      count: 2,
      routes: [
        Mockup1Page(),
        MockupTinderPage(),
      ],
    ),
    DataModels(
      iconImage: "assets/images/material_toys.png",
      title: "Playground",
      subtitle: "Ambiente destinado a testes e estudos em geral",
      count: 3,
      page: PlaygroundExercicesPage(),
      routes: [],
    ),
  ];
}
