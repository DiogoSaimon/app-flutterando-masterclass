import 'package:flutter/material.dart';
import 'package:projeto_app_masterclass/shared/utils/app_colors.dart';
import 'package:projeto_app_masterclass/shared/utils/app_fonts.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  const BottomNavigationBarCustom({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarCustomState createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  // int _selectedIndex = 0;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 19.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("assets/images/feather_target.png"),
                  SizedBox(height: 7),
                  Text(
                    "Atividades",
                    style: AppFonts.montserratw400BlackSqueeze12,
                  ),
                ],
              ),
            ),
            VerticalDivider(
              color: AppColors.abbey,
              width: 1,
              indent: 12,
              thickness: 1,
            ),
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("assets/images/awesome_github.png"),
                  SizedBox(height: 7),
                  Text(
                    "Repositórios",
                    style: AppFonts.montserratw400BlackSqueeze12,
                  ),
                ],
              ),
            ),
            VerticalDivider(
              color: AppColors.abbey,
              width: 1,
              indent: 12,
              thickness: 1,
            ),
            GestureDetector(
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.person, color: AppColors.white, size: 28),
                  SizedBox(height: 7),
                  Text(
                    "Sobre o dev",
                    style: AppFonts.montserratw400BlackSqueeze12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
