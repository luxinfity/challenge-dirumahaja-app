import 'package:dirumahaja/core/res/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 52),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(height: 64),
          getTitle(),
          getRuleBox(),
        ],
      ),
    );
  }

  Widget getTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Kenalan Dulu Dong',
            style: GoogleFonts.raleway(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: AppColor.titleColor.toHexColor(),
            ),
          ),
          Container(height: 8),
          Text(
            'Tak kenal maka tak sayang, ayo kenalan dulu',
            style: GoogleFonts.muli(
              fontSize: 12,
              color: AppColor.bodyColor.toHexColor(),
            ),
          ),
        ],
      ),
    );
  }

  Widget getRuleBox() {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Username'),
            TextField(),
            Text('Umur'),
            Row(
              children: <Widget>[
                Container(
                  child: TextField(),
                  width: 56,
                ),
                Text('Tahun'),
              ],
            ),
            Row(
              children: <Widget>[
                MaterialButton(
                  child: Text('Pria'),
                  color: HexColor('0165C0'),
                  onPressed: () {},
                ),
                MaterialButton(
                  child: Text('Wanita'),
                  color: HexColor('0165C0'),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
