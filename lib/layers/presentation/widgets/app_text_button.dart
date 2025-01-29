import 'package:flutter/material.dart';
import '../app_text_styles.dart';

class AppTextButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const AppTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  State<AppTextButton> createState() => _AppTextButtonState();
}

class _AppTextButtonState extends State<AppTextButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() {
        _isHovered = true;
      }),
      onExit: (event) => setState(() {
        _isHovered = false;
      }),
      child: TextButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: Text(
          widget.text,
          style: _isHovered
              ? AppTextStyles.bodyText2Blue
              : AppTextStyles.bodyText2,
        ),
      ),
    );
  }
}
