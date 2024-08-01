import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_market/constants/color_constants.dart';

class InputWidget extends StatelessWidget {
  final String label;
  final bool isPassword;
  const InputWidget({super.key, required this.label, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 16,
            color: ColorConstants.black,
          ),
        ),
        const Gap(8),
        TextField(
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: ColorConstants.black,
          ),
          obscureText: isPassword,
          decoration: InputDecoration(
              fillColor: Color.fromARGB(80, 233, 233, 233),
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Colors.transparent)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: ColorConstants.primary,
                  ))),
          cursorColor: ColorConstants.black,
        ),
        const Gap(20),
      ],
    );
  }
}
