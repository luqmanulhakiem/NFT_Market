import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/constants/color_constants.dart';
import 'package:nft_market/presentation/widgets/bid_tile_widget.dart';
import 'package:nft_market/presentation/widgets/browse_tile_widget.dart';
import 'package:nft_market/presentation/widgets/page_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_userInfo(), _popularBids(), _browse()],
        ),
      ),
    ));
  }

  Widget _userInfo() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: ColorConstants.black),
                    borderRadius: BorderRadius.circular(60 / 2)),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: CircleAvatar(
                    child: Image.asset("assets/images/Illustration.png"),
                  ),
                ),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Luqmanul Hakiem",
                    style: GoogleFonts.inter(
                        color: ColorConstants.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  Text(
                    "Level 109",
                    style: GoogleFonts.inter(color: Colors.grey, fontSize: 16),
                  ),
                ],
              )
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {
                //
              },
              icon: SvgPicture.asset('assets/svgs/notification.svg'),
            ),
          )
        ],
      );

  Widget _popularBids() => Padding(
        padding: const EdgeInsets.only(top: 30),
        child: _listTile(
            title: 'Popular Bids',
            itemHeight: 268,
            itemCount: 5,
            itemBuilder: (context, index) => const BidTileWidget()),
      );
  Widget _browse() {
    var browse = [
      Browse(
          image:
              "https://images.unsplash.com/photo-1557672172-298e090bd0f1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YWJzdHJhY3R8ZW58MHx8MHx8fDA%3D",
          title: "Bitcoin",
          itemCount: 1000),
      Browse(
          image:
              "https://images.unsplash.com/photo-1557672172-298e090bd0f1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YWJzdHJhY3R8ZW58MHx8MHx8fDA%3D",
          title: "Bitcoin",
          itemCount: 1000),
      Browse(
          image:
              "https://images.unsplash.com/photo-1557672172-298e090bd0f1?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YWJzdHJhY3R8ZW58MHx8MHx8fDA%3D",
          title: "Bitcoin",
          itemCount: 1000),
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: _listTile(
        title: 'Browse',
        itemHeight: 196,
        itemCount: browse.length,
        itemBuilder: (context, index) =>
            BrowseTileWidget(browse: browse[index]),
      ),
    );
  }

  Column _listTile({
    required String title,
    required double itemHeight,
    required int itemCount,
    required NullableIndexedWidgetBuilder itemBuilder,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            title,
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: ColorConstants.black),
          ),
        ),
        const Gap(16),
        SizedBox(
          height: itemHeight,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            itemBuilder: itemBuilder,
            separatorBuilder: (context, index) => const Gap(25),
            itemCount: itemCount,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
