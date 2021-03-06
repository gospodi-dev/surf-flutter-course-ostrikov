import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/colors.dart';
import 'package:places/ui/res/textstyle.dart';
import 'package:places/ui/screen/sight_card.dart';
import 'package:places/ui/screen/sight_details.dart';

import '../../mocks.dart';

class SightListScreen extends StatefulWidget {
  @override
  _SightListScreen createState() => _SightListScreen();
}

class _SightListScreen extends State<SightListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 120,
        elevation: 0,
        title: Container(
          child: Text(
            'Список \nинтересных мест',
            maxLines: 2,
            style: textBold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: mocks
              .map((sight) => Container(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: GestureDetector(
                      child: SightCard(sight),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SightDetails(sight),
                          ),
                        );
                      },
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
