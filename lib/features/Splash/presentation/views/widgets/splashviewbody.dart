import 'package:blookyapp/constants.dart';
import 'package:blookyapp/core/utils/assets.dart';
import 'package:blookyapp/features/Splash/presentation/views/widgets/slidingtext.dart';
import 'package:blookyapp/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initAnimation();
    navigateToHome();
  }

 

  
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.Logo),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidinganimation: slidinganimation),
      ],
    );
  }
   void initAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
   void navigateToHome() {
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(()=>const  HomeView(),transition:Transition.fade,duration: kTransationDuration );
    
    });
  }
}

