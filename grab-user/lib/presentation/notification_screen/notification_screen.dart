import '../notification_screen/widgets/today_item_widget.dart';import 'package:flutter/material.dart';import 'package:grouped_list/grouped_list.dart';import 'package:team_grab/core/app_export.dart';import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';import 'package:team_grab/widgets/app_bar/appbar_title.dart';import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';
// ignore_for_file: must_be_immutable
class NotificationScreen extends StatelessWidget {NotificationScreen({Key? key}) : super(key: key);

List todayItemList = [{'id' : 1, 'groupBy' : "Today "}, {'id' : 2, 'groupBy' : "Today "}, {'id' : 3, 'groupBy' : "Yesterday"}, {'id' : 4, 'groupBy' : "Payment Successfully!"}, {'id' : 5, 'groupBy' : "Credit Card added!"}, {'id' : 6, 'groupBy' : "Added Money wallet Successfully!"}, {'id' : 7, 'groupBy' : "May, 27 2023"}];

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray10001, appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.fromLTRB(15.h, 23.v, 15.h, 5.v), child: GroupedListView<dynamic, String>(shrinkWrap: true, stickyHeaderBackgroundColor: Colors.transparent, elements: todayItemList, groupBy: (element) => element['groupBy'], sort: false, groupSeparatorBuilder: (String value) {return Padding(padding: EdgeInsets.only(top: 15.v, bottom: 7.v), child: Text(value, style: CustomTextStyles.titleSmallOnErrorContainer.copyWith(color: theme.colorScheme.onErrorContainer)));}, itemBuilder: (context, model) {return TodayItemWidget();}, separator: SizedBox(height: 11.v))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftGray900, margin: EdgeInsets.only(left: 8.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), title: Padding(padding: EdgeInsets.only(left: 5.h), child: Row(children: [AppbarSubtitle(text: "Back", margin: EdgeInsets.only(top: 1.v)), AppbarTitle(text: "Notification", margin: EdgeInsets.only(left: 68.h))]))); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
