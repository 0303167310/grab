import 'package:flutter/material.dart';
import 'package:team_grab/widgets/custom_checkbox_button.dart';

class CancelrideItemWidget extends StatefulWidget {
  const CancelrideItemWidget({Key? key}) : super(key: key);

  @override
  _CancelrideItemWidgetState createState() => _CancelrideItemWidgetState();
}

class _CancelrideItemWidgetState extends State<CancelrideItemWidget> {
  Map<String, bool> cancelReasons = {
    'Thời gian chờ quá lâu': false,
    'Không liên lạc được với tài xế': false,
    'Tài xế yêu cầu hủy': false,
    'Tôi đặt sai địa điểm': false,
    'Giá cả không hợp lý': false,
  };

  TextEditingController noteController = TextEditingController();

  @override
  void dispose() {
    noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9,
        vertical: 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: cancelReasons.entries
                .map(
                  (entry) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomCheckboxButton(
                        text: entry.key,
                        value: cancelReasons[entry.key] ?? false,
                        onChange: (value) {
                          setState(() {
                            cancelReasons[entry.key] = value;
                          });
                        },
                      ),
                      SizedBox(height: 30), // Add space between reasons
                    ],
                  ),
                )
                .toList(),
          ),
          SizedBox(height: 16),
          TextField(
            controller: noteController,
            decoration: InputDecoration(
              labelText: 'Ghi chú',
              border: OutlineInputBorder(),
            ),
            maxLines: 5, // Allows multiline input
          ),
        ],
      ),
    );
  }
}
