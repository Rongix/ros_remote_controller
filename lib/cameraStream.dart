import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'package:webview_flutter/webview_flutter.dart';

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: const Color(0xFF02BB9F),
//         primaryColorDark: const Color(0xFF167F67),
//         accentColor: const Color(0xFF02BB9F),
//       ),
//       title: 'Video Example',
//       home: VideoExample(),
//     );
//   }
// }

// class VideoExample extends StatefulWidget {
//   @override
//   VideoState createState() => VideoState();
// }

// class VideoState extends State<VideoExample> {
//   VideoPlayerController playerController;
//   VoidCallback listener;
//   @override
//   void initState() {
//     super.initState();
//     listener = () {
//       print('test');
//       setState(() {});
//     };
//   }

//   void createVideo() {
//     if (playerController == null) {
//       playerController = VideoPlayerController.network(
//           "http://pop-os:8080/stream?topic=/cv_camera/image_raw")
//         ..addListener(listener)
//         ..setVolume(1.0)
//         ..initialize()
//         ..play();
//     } else {
//       if (playerController.value.isPlaying) {
//         playerController.pause();
//       } else {
//         playerController.initialize();
//         playerController.play();
//       }
//     }
//   }

//   @override
//   void deactivate() {
//     playerController.setVolume(0.0);
//     playerController.removeListener(listener);
//     super.deactivate();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Video Example',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Center(
//           child: AspectRatio(
//               aspectRatio: 16 / 9,
//               child: Container(
//                 child: (playerController != null
//                     ? VideoPlayer(
//                         playerController,
//                       )
//                     : Container()),
//               ))),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           createVideo();
//         },
//         child: Icon(Icons.play_arrow),
//       ),
//     );
//   }
// }
