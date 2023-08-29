import 'package:blookyapp/constants.dart';
import 'package:blookyapp/core/utils/app_router.dart';
import 'package:blookyapp/core/utils/service_locator.dart';
import 'package:blookyapp/features/Splash/presentation/views/splash_view.dart';
import 'package:blookyapp/features/home/Data/repos/home_repo_imp.dart';
import 'package:blookyapp/features/home/presentation/manger/faeturedCubit/featured_books_cubit.dart';
import 'package:blookyapp/features/home/presentation/manger/newsetCubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BlookyApp());
}

class BlookyApp extends StatelessWidget {
  const BlookyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(
                  getIt.get<HomeRepoImp>(),
                )..fetachFeaturedBooks()),
                BlocProvider(
            create: (context) => NewsetBooksCubit(
                  getIt.get<HomeRepoImp>(),
                ),),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          // textTheme:GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
