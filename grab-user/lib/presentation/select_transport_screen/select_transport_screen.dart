import '../select_transport_screen/widgets/xet_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/widgets/app_bar/appbar_leading_image.dart';
import 'package:team_grab/widgets/app_bar/appbar_subtitle.dart';
import 'package:team_grab/widgets/app_bar/appbar_title.dart';
import 'package:team_grab/widgets/app_bar/custom_app_bar.dart';

class SelectTransportScreen extends StatelessWidget {
  const SelectTransportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 19.v),
                child: Column(children: [
                  Text("Chọn phương tiện di chuyển",
                      style: CustomTextStyles.headlineSmallSemiBold),
                  SizedBox(height: 35.v),
                  _buildXet(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftGray900,
            margin: EdgeInsets.only(left: 8.h, top: 14.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Row(children: [
              AppbarSubtitle(
                  text: "Trở lại", margin: EdgeInsets.only(bottom: 1.v)),
              AppbarTitle(
                  text: "Chọn loại xe", margin: EdgeInsets.only(left: 58.h))
            ])));
  }

  /// Section Widget
  Widget _buildXet(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 182.v,
          crossAxisCount: 2,
          mainAxisSpacing: 20.h,
          crossAxisSpacing: 20.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          // Chỉnh sửa dữ liệu cho từng loại xe
          String imagePath = ''; // Đường dẫn ảnh cho từng loại xe
          String title = ''; // Tiêu đề cho từng loại xe

          // Gán dữ liệu tương ứng cho mỗi loại xe dựa trên index
          switch (index) {
            case 0:
              imagePath = ImageConstant.imgCar;
              title = 'Xe ô tô';
              break;
            case 1:
              imagePath = ImageConstant.imgBike;
              title = 'Xe máy';
              break;
            case 2:
              imagePath = ImageConstant.imgCycle;
              title = 'Xe máy điện';
              break;
            case 3:
              imagePath = ImageConstant.imgTaxi;
              title = 'Xe taxi';
              break;
            default:
              break;
          }

          return XetItemWidget(
            imagePath: imagePath,
            title: title,
          );
        },
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
