import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/constants/color_constants.dart';

class BidTileWidget extends StatelessWidget {
  const BidTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 270,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            // height: 191,
            // child: AspectRatio(
            // aspectRatio: 4 / 3,
            child: Container(
              // color: Colors.amber,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.network(
                              'https://plus.unsplash.com/premium_vector-1689096833880-42980c252802?q=80&w=1760&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')
                          .image)),
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
                Row(
                  children: [Text("A"), Text("A")],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
