import 'package:books_app/core/resources/app_text_style.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = Tween<Offset>(begin: Offset(0, 10), end: Offset.zero)
        .animate(_animationController);
    _animationController.forward();
    Future.delayed(Duration(seconds: 5),
        () => Navigator.pushReplacementNamed(context, "home_screen"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SlideTransition(
          position: _animation,
          child: Text("BookLY", style: AppTextStyle.Text_B_S70_LS10(context)),
        ),
      ),
    );
  }
}
