import 'package:flutter/material.dart';
import 'package:flutter_figma_template/crm_dashboard/widgets/card_widget.dart';

class EarningWidget extends StatelessWidget {
  const EarningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 151,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TotalCustomersCardWidget(),
            Container(color: Colors.black12, width: 2, height: 87),
            MembersCardWidget(),
            Container(color: Colors.black12, width: 2, height: 87),
            ActiveNowCardWidget(),
          ],
        ),
      ),
    );
  }
}
