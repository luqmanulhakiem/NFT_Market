import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/constants/color_constants.dart';
import 'package:nft_market/presentation/pages/main/main_page.dart';
import 'package:nft_market/presentation/pages/signin/signin_page.dart';
import 'package:nft_market/presentation/widgets/button_widget.dart';
import 'package:nft_market/presentation/widgets/input_widget.dart';
import 'package:nft_market/presentation/widgets/page_widget.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // Title
            const Gap(60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Start Collecting Amazing Artworks",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: ColorConstants.black,
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  height: 36 / 26,
                ),
              ),
            ),
            const Gap(30),

            // Form Card
            _formCard(context),

            // Action
            const Gap(40),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const SignInPage()));
                },
                child: Text(
                  "Sign in to My Account",
                  style: GoogleFonts.inter(
                      color: const Color(0xFF909FB4), fontSize: 16),
                ))
          ],
        ),
      ),
    ));
  }

  Container _formCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          const InputWidget(
            label: "Full Name",
          ),
          const InputWidget(
            label: "Email Address",
          ),
          const InputWidget(
            label: "Password",
            isPassword: true,
          ),
          // Action
          const Gap(10),
          ButtonWidget(
              isFullWidth: true,
              label: 'Continue',
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const MainPage()));
              })
        ],
      ),
    );
  }
}
