import 'package:admin/responsive.dart';

import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/header.dart';

import 'components/kpi_cards.dart';
import 'components/list_widget.dart';
import 'components/stats_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      KpiCards(),
                      SizedBox(height: defaultPadding),
                      ListWidget(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context)) StatsDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we don't want to show it
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StatsDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
