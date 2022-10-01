import 'package:flutter/material.dart';

class ModeList extends StatefulWidget {
  const ModeList({super.key});

  @override
  State<ModeList> createState() => _ModeListState();
}

class _ModeListState extends State<ModeList> {
  int activeIndex = 0;

  @override
  Widget listTile(String imgUrl, String title, bool active) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey),
          ),
        ),
        child: ListTile(
          trailing: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border:
                      Border.all(color: active ? Colors.red : Colors.green)),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  active ? "Deactivate" : "Activate",
                  style: TextStyle(color: active ? Colors.red : Colors.green),
                ),
              )),
          leading:
              SizedBox(height: 40, width: 40, child: Image.network(imgUrl)),
          title: Text(title),
          subtitle: active ? const Text("Active") : const Text("Inactive"),
        ),
      ),
    );
  }

  final bgcolor = const Color.fromARGB(255, 242, 242, 231);

  List<List<dynamic>> tileList = [
    [
      [
        'https://cdn-icons-png.flaticon.com/512/174/174857.png',
        'LinkedIn',
        true,
      ],
      [
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZdlpeKU-xjOSXBr1nHDCH25Bb_kRVKFDzEw&usqp=CAU',
        'Phone',
        true,
      ],
      [
        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Google_Maps_icon_%282020%29.svg/1200px-Google_Maps_icon_%282020%29.svg.png',
        'Google Maps',
        false,
      ],
      [
        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/2048px-Instagram_icon.png',
        'Instagram',
        true,
      ],
    ],
    [
      [
        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/2048px-Instagram_icon.png',
        'Instagram',
        false,
      ],
    ],
    [
      [
        'https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Google_Maps_icon_%282020%29.svg/1200px-Google_Maps_icon_%282020%29.svg.png',
        'Google Maps',
        true,
      ],
    ]
  ];

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      activeIndex = 0;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                        color: activeIndex == 0 ? Colors.white : bgcolor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5, 5, 5, 5),
                            child: Icon(
                              Icons.power_settings_new_rounded,
                              color: activeIndex == 0
                                  ? const Color(0xFF3387FF)
                                  : Colors.grey,
                              size: 30,
                            ),
                          ),
                          const Text(
                            'Direct Mode',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      activeIndex = 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: activeIndex == 1 ? Colors.white : bgcolor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5, 5, 5, 5),
                            child: Icon(
                              Icons.power_settings_new_rounded,
                              color: activeIndex == 1
                                  ? const Color(0xFF3387FF)
                                  : Colors.grey,
                              size: 30,
                            ),
                          ),
                          const Text(
                            'Personal Mode',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      activeIndex = 2;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: activeIndex == 2 ? Colors.white : bgcolor,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    width: MediaQuery.of(context).size.width * 0.33,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5, 5, 5, 5),
                            child: Icon(
                              Icons.power_settings_new_rounded,
                              color: activeIndex == 2
                                  ? const Color(0xFF3387FF)
                                  : Colors.grey,
                              size: 30,
                            ),
                          ),
                          const Text(
                            'Business Mode',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            height: 190,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              itemCount: tileList[activeIndex].length,
              itemBuilder: (context, index) {
                return listTile(
                    tileList[activeIndex][index][0].toString(),
                    tileList[activeIndex][index][1].toString(),
                    tileList[activeIndex][index][2]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
