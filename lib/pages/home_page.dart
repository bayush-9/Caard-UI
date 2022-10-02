import 'package:caard_assignment/components/horizontal_sliders.dart';
import 'package:caard_assignment/components/mode_list.dart';
import 'package:caard_assignment/components/profile_links.dart';
import 'package:caard_assignment/components/qr_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      'Hello , Akhilesh Sagar',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                const Icon(
                  Icons.credit_card_outlined,
                  color: Color(0xFF858585),
                  size: 40,
                ),
                Container(
                  width: 40,
                  height: 40,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/631/600',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 5, 0),
                  child: FaIcon(
                    FontAwesomeIcons.globe,
                    color: Color(0xFF5F96E2),
                    size: 24,
                  ),
                ),
                Text(
                  'Caard.me/user.name',
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            HorizontalSliders(),
            QRMenu(),
            ProfileLink(),
            ModeList(),
          ],
        ),
      ),
    );
  }
}
