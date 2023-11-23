import 'package:flutter/material.dart';import 'package:team_grab/core/app_export.dart';import 'package:team_grab/presentation/history_cancelled_page/history_cancelled_page.dart';import 'package:team_grab/presentation/history_completed_page/history_completed_page.dart';import 'package:team_grab/presentation/history_upcoming_page/history_upcoming_page.dart';import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';import 'package:team_grab/widgets/app_bar/appbar_title.dart';import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';class HistoryUpcomingTabContainerScreen extends StatefulWidget {const HistoryUpcomingTabContainerScreen({Key? key}) : super(key: key);

@override HistoryUpcomingTabContainerScreenState createState() =>  HistoryUpcomingTabContainerScreenState();

 }

// ignore_for_file: must_be_immutable
class HistoryUpcomingTabContainerScreenState extends State<HistoryUpcomingTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 21.v), _buildTabview(context), SizedBox(height: 679.v, child: TabBarView(controller: tabviewController, children: [HistoryUpcomingPage(), HistoryCompletedPage(), HistoryCancelledPage()]))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeftGray900, margin: EdgeInsets.only(left: 8.h, top: 14.v, bottom: 17.v), onTap: () {onTapArrowLeft(context);}), title: Padding(padding: EdgeInsets.only(left: 5.h), child: Row(children: [AppbarSubtitle(text: "Back", margin: EdgeInsets.only(bottom: 3.v)), AppbarTitle(text: "History", margin: EdgeInsets.only(left: 89.h, top: 1.v))]))); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 48.v, width: 362.h, decoration: BoxDecoration(color: appTheme.yellow5001, borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.amberA400, width: 1.h)), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.gray100, labelStyle: TextStyle(fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w500), unselectedLabelColor: appTheme.gray700, unselectedLabelStyle: TextStyle(fontSize: 12.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w500), indicator: BoxDecoration(color: appTheme.amberA400, borderRadius: BorderRadius.circular(8.h)), tabs: [Tab(child: Text("Upcoming")), Tab(child: Text("Completed")), Tab(child: Text("Cancelled"))])); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
