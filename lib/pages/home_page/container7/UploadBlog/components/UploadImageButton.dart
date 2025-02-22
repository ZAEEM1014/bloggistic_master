import 'package:flutter/material.dart';

import '../../../../../utils/constantss.dart';



class UploadCoverImageButton extends StatelessWidget {
  final VoidCallback onPressed;

  const UploadCoverImageButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 0.5,
            vertical: kDefaultPadding* 0.5
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: kPrimaryColor,
      ),
      onPressed: onPressed,
      icon: const Icon(Icons.upload, color: Colors.white),
      label: const Text(
        'Upload Image',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}