import '../history_completed_page/widgets/playlist1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HistoryCompletedPage extends StatefulWidget {
  const HistoryCompletedPage({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryCompletedPageState createState() => HistoryCompletedPageState();
}

class HistoryCompletedPageState extends State<HistoryCompletedPage>
    with AutomaticKeepAliveClientMixin<HistoryCompletedPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildPlaylist(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: 8,
          itemBuilder: (context, index) {
            return Playlist1ItemWidget();
          },
        ),
      ),
    );
  }
}
