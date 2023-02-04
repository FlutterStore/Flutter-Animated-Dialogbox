// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';

import 'list_data_model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  bool showPerformance = false;

  onSettingCallback() {
    setState(() {
      showPerformance = !showPerformance;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: showPerformance,
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return MyHomePage(
            onSetting: onSettingCallback,
          );
        },
      ),
    );
  }
}

// The StatefulWidget's job is to take in some data and create a State class.
// In this case, the Widget takes a title, and creates a _MyHomePageState.
class MyHomePage extends StatefulWidget {

  final VoidCallback onSetting;

  const MyHomePage({Key? key, required this.onSetting}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String? selectedIndexText;

  int? selectIdx;

  String? singleSelectedIndexText;

  int? selectIndex;

  String? multiSelectedIndexesText;

  List<int>? selectedIndexes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Animated Dialog",style: TextStyle(fontSize: 15),),
        centerTitle: true,
        backgroundColor: Colors.green,
        // title: Text(widget.title),
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(Icons.settings),
        //     onPressed: () {
        //       widget.onSetting.call();
        //     },
        //   )
        // ],
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              padding: const EdgeInsets.only(left: 15.0),
              height: 35.0,
              alignment: Alignment.centerLeft,
              color: const Color(0xFFDDDDDD),
              child: const Text('General dialog'),
            ),
            ListTile(
              title: const Text('Default'),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Fade",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.fade,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            // const Divider(
            //   height: 0.5,
            // ),
            // ListTile(
            //   title: const Text(
            //     "Slide from top",
            //   ),
            //   onTap: () {
            //     showAnimatedDialog(
            //       context: context,
            //       barrierDismissible: true,
            //       builder: (BuildContext context) {
            //         return ClassicGeneralDialogWidget(
            //           titleText: 'Title',
            //           contentText: 'content',
            //           onPositiveClick: () {
            //             Navigator.of(context).pop();
            //           },
            //           onNegativeClick: () {
            //             Navigator.of(context).pop();
            //           },
            //         );
            //       },
            //       animationType: DialogTransitionType.slideFromTop,
            //       curve: Curves.fastOutSlowIn,
            //       duration: const Duration(seconds: 1),
            //     );
            //   },
            // ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Slide from top and fade",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromTopFade,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            // const Divider(
            //   height: 0.5,
            // ),
            // ListTile(
            //   title: const Text(
            //     "Slide from bottom",
            //   ),
            //   onTap: () {
            //     showAnimatedDialog(
            //       context: context,
            //       barrierDismissible: true,
            //       builder: (BuildContext context) {
            //         return ClassicGeneralDialogWidget(
            //           titleText: 'Title',
            //           contentText: 'content',
            //           onPositiveClick: () {
            //             Navigator.of(context).pop();
            //           },
            //           onNegativeClick: () {
            //             Navigator.of(context).pop();
            //           },
            //         );
            //       },
            //       animationType: DialogTransitionType.slideFromBottom,
            //       curve: Curves.fastOutSlowIn,
            //       duration: const Duration(seconds: 1),
            //     );
            //   },
            // ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Slide from bottom and fade",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.slideFromBottomFade,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            // const Divider(
            //   height: 0.5,
            // ),
            // ListTile(
            //   title: const Text(
            //     "Slide from left",
            //   ),
            //   onTap: () {
            //     showAnimatedDialog(
            //       context: context,
            //       barrierDismissible: true,
            //       builder: (BuildContext context) {
            //         return ClassicGeneralDialogWidget(
            //           titleText: 'Title',
            //           contentText: 'content',
            //           onPositiveClick: () {
            //             Navigator.of(context).pop();
            //           },
            //           onNegativeClick: () {
            //             Navigator.of(context).pop();
            //           },
            //         );
            //       },
            //       animationType: DialogTransitionType.slideFromLeft,
            //       curve: Curves.fastOutSlowIn,
            //       duration: const Duration(seconds: 1),
            //     );
            //   },
            // ),
            // const Divider(
            //   height: 0.5,
            // ),
            // ListTile(
            //   title: const Text(
            //     "Slide from left and fade",
            //   ),
            //   onTap: () {
            //     showAnimatedDialog(
            //       context: context,
            //       barrierDismissible: true,
            //       builder: (BuildContext context) {
            //         return ClassicGeneralDialogWidget(
            //           titleText: 'Title',
            //           contentText: 'content',
            //           onPositiveClick: () {
            //             Navigator.of(context).pop();
            //           },
            //           onNegativeClick: () {
            //             Navigator.of(context).pop();
            //           },
            //         );
            //       },
            //       animationType: DialogTransitionType.slideFromLeftFade,
            //       curve: Curves.fastOutSlowIn,
            //       duration: const Duration(seconds: 1),
            //     );
            //   },
            // ),
            // const Divider(
            //   height: 0.5,
            // ),
            // ListTile(
            //   title: const Text(
            //     "Slide from right",
            //   ),
            //   onTap: () {
            //     showAnimatedDialog(
            //       context: context,
            //       barrierDismissible: true,
            //       builder: (BuildContext context) {
            //         return ClassicGeneralDialogWidget(
            //           titleText: 'Title',
            //           contentText: 'content',
            //           onPositiveClick: () {
            //             Navigator.of(context).pop();
            //           },
            //           onNegativeClick: () {
            //             Navigator.of(context).pop();
            //           },
            //         );
            //       },
            //       animationType: DialogTransitionType.slideFromRight,
            //       curve: Curves.fastOutSlowIn,
            //       duration: const Duration(seconds: 1),
            //     );
            //   },
            // ),
            // const Divider(
            //   height: 0.5,
            // ),
            // ListTile(
            //   title: const Text(
            //     "Slide from right and fade",
            //   ),
            //   onTap: () {
            //     showAnimatedDialog(
            //       context: context,
            //       barrierDismissible: true,
            //       builder: (BuildContext context) {
            //         return ClassicGeneralDialogWidget(
            //           titleText: 'Title',
            //           contentText: 'content',
            //           onPositiveClick: () {
            //             Navigator.of(context).pop();
            //           },
            //           onNegativeClick: () {
            //             Navigator.of(context).pop();
            //           },
            //         );
            //       },
            //       animationType: DialogTransitionType.slideFromRightFade,
            //       curve: Curves.fastOutSlowIn,
            //       duration: const Duration(seconds: 1),
            //     );
            //   },
            // ),
            const Divider(
              height: 0.5,
            ),
            // ListTile(
            //   title: const Text(
            //     "Scale",
            //   ),
            //   onTap: () {
            //     showAnimatedDialog(
            //       context: context,
            //       barrierDismissible: true,
            //       builder: (BuildContext context) {
            //         return ClassicGeneralDialogWidget(
            //           titleText: 'Title',
            //           contentText: 'content',
            //           onPositiveClick: () {
            //             Navigator.of(context).pop();
            //           },
            //           onNegativeClick: () {
            //             Navigator.of(context).pop();
            //           },
            //         );
            //       },
            //       animationType: DialogTransitionType.scale,
            //       curve: Curves.fastOutSlowIn,
            //       duration: const Duration(seconds: 1),
            //     );
            //   },
            // ),
            // const Divider(
            //   height: 0.5,
            // ),
            ListTile(
              title: const Text(
                "Fade scale",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.fadeScale,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Scale rotate",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.scaleRotate,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            // const Divider(
            //   height: 0.5,
            // ),
            // ListTile(
            //   title: const Text(
            //     "Rotate",
            //   ),
            //   onTap: () {
            //     showAnimatedDialog(
            //       context: context,
            //       barrierDismissible: true,
            //       builder: (BuildContext context) {
            //         return ClassicGeneralDialogWidget(
            //           titleText: 'Title',
            //           contentText: 'content',
            //           onPositiveClick: () {
            //             Navigator.of(context).pop();
            //           },
            //           onNegativeClick: () {
            //             Navigator.of(context).pop();
            //           },
            //         );
            //       },
            //       animationType: DialogTransitionType.rotate,
            //       curve: Curves.fastOutSlowIn,
            //       duration: const Duration(seconds: 1),
            //     );
            //   },
            // ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "Fade rotate",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.fadeRotate,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            // const Divider(
            //   height: 0.5,
            // ),
            // ListTile(
            //   title: const Text(
            //     "Rotate 3D",
            //   ),
            //   onTap: () {
            //     showAnimatedDialog(
            //       context: context,
            //       barrierDismissible: true,
            //       builder: (BuildContext context) {
            //         return ClassicGeneralDialogWidget(
            //           titleText: 'Title',
            //           contentText: 'content',
            //           onPositiveClick: () {
            //             Navigator.of(context).pop();
            //           },
            //           onNegativeClick: () {
            //             Navigator.of(context).pop();
            //           },
            //         );
            //       },
            //       animationType: DialogTransitionType.rotate3D,
            //       curve: Curves.fastOutSlowIn,
            //       duration: const Duration(seconds: 1),
            //     );
            //   },
            // ),
            // const Divider(
            //   height: 0.5,
            // ),
            // ListTile(
            //   title: const Text(
            //     "Size",
            //   ),
            //   onTap: () {
            //     showAnimatedDialog(
            //       context: context,
            //       barrierDismissible: true,
            //       builder: (BuildContext context) {
            //         return ClassicGeneralDialogWidget(
            //           titleText: 'Title',
            //           contentText: 'content',
            //           onPositiveClick: () {
            //             Navigator.of(context).pop();
            //           },
            //           onNegativeClick: () {
            //             Navigator.of(context).pop();
            //           },
            //         );
            //       },
            //       animationType: DialogTransitionType.size,
            //       curve: Curves.fastOutSlowIn,
            //       duration: const Duration(seconds: 1),
            //     );
            //   },
            // ),
            // const Divider(
            //   height: 0.5,
            // ),
            // ListTile(
            //   title: const Text(
            //     "Size fade",
            //   ),
            //   onTap: () {
            //     showAnimatedDialog(
            //       context: context,
            //       barrierDismissible: true,
            //       builder: (BuildContext context) {
            //         return ClassicGeneralDialogWidget(
            //           titleText: 'Title',
            //           contentText: 'content',
            //           onPositiveClick: () {
            //             Navigator.of(context).pop();
            //           },
            //           onNegativeClick: () {
            //             Navigator.of(context).pop();
            //           },
            //         );
            //       },
            //       animationType: DialogTransitionType.sizeFade,
            //       curve: Curves.fastOutSlowIn,
            //       duration: const Duration(seconds: 1),
            //     );
            //   },
            // ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: const Text(
                "No animation",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'content',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.none,
                  curve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 1),
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),

            ///Classic dialog widget
            Container(
              margin: const EdgeInsets.only(bottom: 10.0, top: 50.0),
              padding: const EdgeInsets.only(left: 15.0),
              height: 35.0,
              alignment: Alignment.centerLeft,
              color: const Color(0xFFDDDDDD),
              child: const Text('Classic dialog widget'),
            ),
            ListTile(
              title: const Text(
                "General dialog",
              ),
              onTap: () {
                showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicGeneralDialogWidget(
                      titleText: 'Title',
                      contentText: 'This is general dialog.',
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.size,
                  curve: Curves.linear,
                );
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "List dialog ${selectedIndexText != null && selectedIndexText!.isNotEmpty ? '(index:$selectedIndexText)' : ''}",
              ),
              onTap: () async {
                int? index = await showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicListDialogWidget<ListDataModel>(
                      titleText: 'Title',
                      dataList: List.generate(
                        2,
                        (index) {
                          return ListDataModel(name: 'Name$index', value: 'Value$index');
                        },
                      ),
                      onPositiveClick: () {
                        Navigator.of(context).pop();
                      },
                      onNegativeClick: () {
                        Navigator.of(context).pop();
                      },
                    );
                  },
                  animationType: DialogTransitionType.size,
                  curve: Curves.linear,
                );
                selectIdx = index ?? selectIdx;
                print('selectedIndex:$selectIdx');
                setState(() {
                  selectedIndexText = '${selectIdx ?? ''}';
                });
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "List single select${singleSelectedIndexText != null && singleSelectedIndexText!.isNotEmpty ? '(index:$singleSelectedIndexText)' : ''}",
              ),
              onTap: () async {
                int? index = await showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicListDialogWidget<ListDataModel>(
                      titleText: 'Title',
                      listType: ListType.singleSelect,
                      activeColor: Colors.red,
                      selectedIndex: selectIndex,
                      dataList: List.generate(
                        20,
                        (index) {
                          return ListDataModel(
                              name: 'Name$index', value: 'Value$index');
                        },
                      ),
                    );
                  },
                  animationType: DialogTransitionType.size,
                  curve: Curves.linear,
                );
                selectIndex = index ?? selectIndex;

                print('selectedIndex:$selectIndex');
                setState(() {
                  singleSelectedIndexText = '${selectIndex ?? ''}';
                });
              },
            ),
            const Divider(
              height: 0.5,
            ),
            ListTile(
              title: Text(
                "List multiple select${multiSelectedIndexesText != null && multiSelectedIndexesText!.isNotEmpty ? '(index:$multiSelectedIndexesText)' : ''}",
              ),
              onTap: () async {
                List<int>? indexes = await showAnimatedDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ClassicListDialogWidget<ListDataModel>(
                      titleText: 'Title',
                      listType: ListType.multiSelect,
                      selectedIndexes: selectedIndexes,
                      activeColor: Colors.green,
                      dataList: List.generate(
                        20,
                        (index) {
                          return ListDataModel(
                              name: 'Name$index', value: 'Value$index');
                        },
                      ),
                    );
                  },
                  animationType: DialogTransitionType.size,
                  curve: Curves.linear,
                );

                selectedIndexes = indexes ?? selectedIndexes;
                print('selectedIndex:${selectedIndexes?.toString()}');
                setState(() {
                  multiSelectedIndexesText =
                      selectedIndexes != null && selectedIndexes!.length > 0
                          ? selectedIndexes.toString()
                          : '';
                });
              },
            ),
            // const Divider(
            //   height: 0.5,
            // ),
            // ListTile(
            //   title: const Text(
            //     "Custom dialog",
            //   ),
            //   onTap: () {
            //     showAnimatedDialog(
            //       context: context,
            //       barrierDismissible: true,
            //       builder: (BuildContext context) {
            //         return SingleChildScrollView(
            //             child: ListBody(
            //           children: <Widget>[
            //             Container(
            //               padding: const EdgeInsets.all(10.0),
            //               width: 200.0,
            //               child: const FlutterLogo(
            //                 size: 150.0,
            //               ),
            //             )
            //           ],
            //         ));
            //       },
            //       animationType: DialogTransitionType.size,
            //       curve: Curves.linear,
            //     );
            //   },
            // ),
            // const Divider(
            //   height: 0.5,
            // ),
          ],
        ),
      ),
    );
  }
}