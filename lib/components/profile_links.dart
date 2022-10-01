import 'package:flutter/material.dart';

class ProfileLink extends StatelessWidget {
  const ProfileLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: const Color(0xFF080303),
                ),
              ),
              alignment: const AlignmentDirectional(0, 0),
              child: const Text(
                'Edit Profile',
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: const Color(0xFF080303),
                ),
              ),
              alignment: const AlignmentDirectional(0, 0),
              child: const Text(
                'Add Link',
              ),
            ),
            Container(
              width: 100,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: const Color(0xFF080303),
                ),
              ),
              alignment: const AlignmentDirectional(0, 0),
              child: const Text(
                'Preview',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
