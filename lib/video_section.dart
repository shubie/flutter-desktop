import 'package:flutter/material.dart';
import 'package:flutterdesktop/utils.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class VideoSection extends StatefulWidget {
  @override
  _VideoSectionState createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25, horizontal:  20),
        child: Column(
          children: [
            topSection(),
            streamView(),
            footerButtons()
          ],
        ),
    );
  }

  topSection() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
              child: Image.asset(
            'images/logo.png',
          )),
          Expanded(
            flex: 6,
              child: ListTile(
                title: Text("Engagement & Nurture Marketing Strategy", overflow: TextOverflow.ellipsis),
                subtitle: Text("Social Media Marketing"),
              )),
          makeIconButtons(EvaIcons.cloudUploadOutline),
          makeIconButtons(EvaIcons.settingsOutline),
          makeIconButtons(EvaIcons.moreHorizotnalOutline),
          finishButton("Finish the lesson", (){})
        ],
      ),
    );

  }
  streamView() {
    return Expanded(
      flex: 6,
      child: Container(
            height: MediaQuery.of(context).size.height * .8,
            decoration: BoxDecoration(
              color: const Color(0xffbF2F4F7),
              image: DecorationImage(
                image: new AssetImage('images/photo.jpg'),
                fit: BoxFit.fill,
              ),
              border: Border.all(
                color: Colors.black,
                width: 0,
              ),
              borderRadius: BorderRadius.circular(8),
            ),

      ),
    );

  }
  footerButtons() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        makeIconColumnButtons(EvaIcons.cameraOutline, "cam" ),
        makeIconColumnButtons(EvaIcons.micOutline, "mic" ),
        makeIconColumnButtons(EvaIcons.shareOutline, "Share" ),
        makeIconColumnButtons(Icons.record_voice_over, "Rec" ),
        makeIconColumnButtons(Icons.slideshow, "Slide" ),
        makeIconColumnButtons(Icons.poll, "Poll" ),
      ],
    );
  }
}
