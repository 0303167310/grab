import '../history_upcoming_page/widgets/playlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HistoryUpcomingPage extends StatefulWidget {
  const HistoryUpcomingPage({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryUpcomingPageState createState() => HistoryUpcomingPageState();
}

class HistoryUpcomingPageState extends State<HistoryUpcomingPage>
    with AutomaticKeepAliveClientMixin<HistoryUpcomingPage> {
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
            return PlaylistItemWidget();
          },
        ),
      ),
    );
  }
}
