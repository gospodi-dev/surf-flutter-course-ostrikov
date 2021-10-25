import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/ui/res/textstyle.dart';

class SightCard extends StatelessWidget {
  final Sight sight;

  SightCard(this.sight);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 96,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      child: Image.network(
                        sight.url,
                        fit: BoxFit.cover,
                      )),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                ),
                Align(
                  child: Container(
                    margin: EdgeInsets.only(top: 19, right: 18),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    ),
                  ),
                  alignment: Alignment.topRight,
                ),
                Container(
                  margin: EdgeInsets.only(top: 16, left: 16),
                  child: Text(
                    sight.type.toLowerCase(),
                    style: textBoldWhite.copyWith(fontSize: 14),
                  ),
                ),
              ],
            ),
            Container(
              height: 96,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 16,
                      right: 16,
                      left: 16,
                    ),
                    child: Text(
                      sight.name,
                      style: textTitle,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 16,
                      right: 16,
                      left: 16,
                      top: 2,
                    ),
                    child: Text(
                      sight.details,
                      style: textDescription,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
