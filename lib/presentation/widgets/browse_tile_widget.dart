import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/constants/color_constants.dart';

class Browse {
  final String image;
  final String title;
  final int itemCount;

  Browse({required this.image, required this.title, required this.itemCount});
}

class BrowseTileWidget extends StatelessWidget {
  final Browse browse;
  const BrowseTileWidget({super.key, required this.browse});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 140,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(browse.image).image)),
            ),
            // ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "data",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: ColorConstants.black),
                    ),
                    RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(text: "Ends in "),
                            TextSpan(
                                text: "35m 11s",
                                style: TextStyle(color: Colors.pink)),
                          ],
                          style: GoogleFonts.inter(
                              fontSize: 14, color: Colors.grey)),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
