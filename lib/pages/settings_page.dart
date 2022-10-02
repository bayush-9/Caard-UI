import 'package:flutter/material.dart';

class SettingscreenWidget extends StatefulWidget {
  const SettingscreenWidget({Key? key}) : super(key: key);

  @override
  _SettingscreenWidgetState createState() => _SettingscreenWidgetState();
}

class _SettingscreenWidgetState extends State<SettingscreenWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
          size: 24,
        ),
        title: const Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            'Custom Link',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          Align(
            alignment: const AlignmentDirectional(0, 0),
            child: TextButton(
              onPressed: () {
                print('Button pressed ...');
              },
              child: const Text('Preview'),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: const Color(0xFFEFEFF0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  color: Color(0xFFD5D5D5),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Add Custom Link',
                    ),
                    Container(
                      width: 250,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFF080303),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(
                            Icons.shield,
                            color: Color(0xFFFFF000),
                            size: 24,
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(35, 0, 50, 0),
                              child: Text(
                                'Your Text Here',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 20,
                decoration: const BoxDecoration(),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Text Color',
                  ),
                  Container(
                    width: 60,
                    height: 25,
                    decoration: BoxDecoration(
                      color: const Color(0xFF5F96E2),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: const Color(0xFFA6A6A6),
                      ),
                    ),
                  ),
                  Container(
                    width: 10,
                    decoration: const BoxDecoration(),
                  ),
                  const Text(
                    'Box Color',
                  ),
                  Container(
                    width: 60,
                    height: 25,
                    decoration: BoxDecoration(
                      color: const Color(0xFFA6A6A6),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 20,
                decoration: const BoxDecoration(),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(18, 0, 0, 0),
                    child: Text(
                      'Add Icon',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 18, 20),
                    child: Icon(
                      Icons.shield,
                      color: Color(0xFFFFF000),
                      size: 40,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(18, 18, 18, 18),
                child: TextFormField(
                  controller: textController1,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText:
                        'Button Title:                                Your  Text Here',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF9B9B9B),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(18, 0, 18, 18),
                child: TextFormField(
                  controller: textController2,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText:
                        'Enter Link:                                       google.com',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: const Color(0xFF9B9B9B),
                    suffixIcon: const Icon(
                      Icons.content_copy,
                      color: Color(0xFF757575),
                      size: 22,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: const Color(0xFF080303),
                      ),
                    ),
                    child: const Icon(
                      Icons.delete_outline_sharp,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF080303),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Align(
                      alignment: AlignmentDirectional(-0.05, 0.05),
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.white),
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
