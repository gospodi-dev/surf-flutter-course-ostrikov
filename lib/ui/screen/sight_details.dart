import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/textstyle.dart';
import 'package:places/widget/icon_button_widget.dart';

class SightDetails extends StatelessWidget {
  final Sight sight;

  SightDetails(this.sight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 360.0,
            flexibleSpace: Container(
              height: 360 + kToolbarHeight,
              width: double.infinity,
              child: Image.network(
                sight.url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sight.name,
                        style: textBold.copyWith(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Text(
                            sight.type.toLowerCase(),
                            style: textBold.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'июнь-август',
                            style: textDescription,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        sight.details,
                        style: textDescription.copyWith(),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.green,
                        ),
                        child: Center(
                          child: Text(
                            'ПОСТРОИТЬ МАРШРУТ',
                            style: textBoldWhite.copyWith(fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        height: 0.8,
                        color: Colors.lightGreen,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: BuildButton(
                              'Запланировать',
                              Icons.calendar_today_outlined,
                              false,
                            ),
                          ),
                          Expanded(
                            child: BuildButton(
                              'В избранное',
                              Icons.favorite_border_outlined,
                              true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
