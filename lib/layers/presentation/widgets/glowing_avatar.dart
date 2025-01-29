import 'package:flutter/material.dart';

import 'package:zergiocunha_net/layers/presentation/app_colors.dart';

class GlowingAvatar extends StatefulWidget {
  final double radius;
  const GlowingAvatar({super.key, required this.radius});

  @override
  _GlowingAvatarState createState() => _GlowingAvatarState();
}

class _GlowingAvatarState extends State<GlowingAvatar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(
        reverse: true,
      );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        double glowIntensity = 10 + (_controller.value * 20);

        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.blue,
              width: 3,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.blue.withOpacity(0.6),
                blurRadius: glowIntensity, // Faz o brilho pulsar
                spreadRadius: glowIntensity / 2, // Expande o brilho para fora
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: const AssetImage(
                'assets/images/profile.jpg',
              ),
              backgroundColor: Colors.transparent,
              radius: widget.radius,
            ),
          ),
        );
      },
    );
  }
}
