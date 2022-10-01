import 'package:flutter/material.dart';

class QRMenu extends StatelessWidget {
  const QRMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Icon(
                    Icons.bar_chart_rounded,
                    color: Color(0xFF3387FF),
                    size: 60,
                  ),
                  Text(
                    'Visits\n 207',
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Icon(
                    Icons.shopping_bag_sharp,
                    color: Color(0xFF3387FF),
                    size: 60,
                  ),
                  Text(
                    ' Buy \nNow',
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Icon(
                    Icons.qr_code_scanner,
                    color: Color(0xFF3387FF),
                    size: 60,
                  ),
                  Text(
                    'Scan \n  QR',
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Icon(
                    Icons.qr_code,
                    color: Color(0xFF3387FF),
                    size: 60,
                  ),
                  Text(
                    ' Share \nmy QR',
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
