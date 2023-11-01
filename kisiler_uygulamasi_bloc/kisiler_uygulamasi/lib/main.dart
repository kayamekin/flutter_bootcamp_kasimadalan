import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi/ui/cubit/anasayfa_cubit.dart';
import 'package:kisiler_uygulamasi/ui/cubit/detay_cubit.dart';
import 'package:kisiler_uygulamasi/ui/cubit/kayit_cubit.dart';
import 'package:kisiler_uygulamasi/ui/views/anasayfa.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => KayitCubit()),
        BlocProvider(create: (context) => DetayCubit()),
        BlocProvider(create: (context) => AnasayfaCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const AnaSayfa(),
      ),
    );
  }
}
