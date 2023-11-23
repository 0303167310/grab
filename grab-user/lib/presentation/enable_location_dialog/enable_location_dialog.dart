import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:team_grab/core/app_export.dart';
import 'package:team_grab/presentation/select_transport_screen/select_transport_screen.dart';
import 'package:team_grab/widgets/custom_elevated_button.dart';

class EnableLocationDialog extends StatelessWidget {
  const EnableLocationDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.grey, // Set the color to grey
          ),
          padding: EdgeInsets.symmetric(horizontal: 26.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5.v),
              Container(
                margin: EdgeInsets.only(right: 1.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 30.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      width: 110,
                      height: 110,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 110,
                              height: 110,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.08,
                                      child: Container(
                                        width: 110,
                                        height: 110,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFFFFAE6),
                                          shape: OvalBorder(
                                            side: BorderSide(
                                                width: 1,
                                                color: Color(0xFFFEC400)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 8,
                                    top: 8,
                                    child: Opacity(
                                      opacity: 0.15,
                                      child: Container(
                                        width: 94,
                                        height: 94,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFFFF1B1),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 17,
                                    top: 17,
                                    child: Opacity(
                                      opacity: 0.35,
                                      child: Container(
                                        width: 76,
                                        height: 76,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFFBDB86),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 25,
                                    top: 25,
                                    child: Opacity(
                                      opacity: 0.80,
                                      child: Container(
                                        width: 60,
                                        height: 60,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFFEC400),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 39,
                            top: 38,
                            child: Container(
                              width: 33,
                              height: 33,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 8.25,
                                    top: 4.85,
                                    child: Container(
                                      width: 16.50,
                                      height: 23.09,
                                      decoration: ShapeDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/location_screen.png'),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 0,
                                            strokeAlign:
                                                BorderSide.strokeAlignCenter,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 38.v),
                    Text(
                      "Lựa chọn vị trí của bạn",
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 5.v),
                    Container(
                      width: 262.h,
                      margin: EdgeInsets.symmetric(horizontal: 23.h),
                      child: Text(
                        "Chọn vị trí của bạn để bắt đầu tìm yêu cầu xung quanh bạn",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.titleSmall!.copyWith(
                          height: 1.36,
                        ),
                      ),
                    ),
                    SizedBox(height: 37.v),
                    CustomElevatedButton(
                      text: "Sử dụng vị trí hiện tại",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectTransportScreen()));
                      },
                    ),
                    SizedBox(height: 20.v),
                    CustomElevatedButton(
                      text: "Bỏ qua bây giờ",
                      buttonStyle: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 224, 220,
                            220), // Change to the shade of gray you prefer
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelectTransportScreen()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
