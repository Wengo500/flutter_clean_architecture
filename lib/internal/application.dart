import 'package:clean_architecture/internal/dependencies/repository_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/bloc/home_state/bloc.dart';
import '../presentation/home.dart';

class Application extends StatelessWidget {
  final repository = RepositoryModule.dayRepository();
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider<HomeStateBloc>(
          create: (BuildContext context) => HomeStateBloc(repository),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Home(),
      )
    );

  }
}