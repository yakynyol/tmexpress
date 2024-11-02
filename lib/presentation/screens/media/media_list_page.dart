import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection/injection.dart';
import 'bloc/media_list_bloc.dart';
import 'cubit/media_category_cubit.dart';
import 'media_list_screen.dart';

class MediaListPage extends StatelessWidget {
  const MediaListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Player();

        MultiBlocProvider(
      providers: [
        BlocProvider<MediaListBloc>(create: (context) => getIt()),
        BlocProvider<MediaCategoryCubit>(create: (context) => getIt()..load()),
      ],
      child: const MediaListScreen(),
    );
  }
}
