import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBoxComponent extends StatelessWidget {
  final String hintText;
  const SearchBoxComponent({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(162, 158, 158, 158)),
        ),
        hintText: hintText,
        suffixIcon: Padding(
          padding: const EdgeInsets.all(4.0),
          child: SvgPicture.asset(
            'assets/icons/search.svg',
          ),
        ),
      ),
    );
  }
}
