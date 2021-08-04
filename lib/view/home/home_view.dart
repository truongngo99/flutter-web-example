import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web_example/data/post/api.dart';
import 'package:flutter_web_example/view/body/body_view.dart';
import 'package:flutter_web_example/view/dashboard/dash_board_bloc.dart';
import 'package:flutter_web_example/view/dashboard/dash_board_event.dart';
import 'package:flutter_web_example/view/dashboard/dash_board_state.dart';
import 'package:flutter_web_example/view/header/header_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teq_flutter_core/teq_flutter_core.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends BaseBlocState<HomeView> {
  @override
  Widget build(BuildContext context) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => bloc as DashboardBloc),
          ],
          child: BaseBlocBuilder<DashboardState>(
              bloc as DashboardBloc, _buildBody));
  @override
  Widget _buildBody(BuildContext context, DashboardState state) {
    return Scaffold(
      backgroundColor: Color(0xffeaf2ff),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 70, vertical: 60),
        child: Column(
          children: [
            BuildHeader(),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: BuildBody(
              index: 0,
            )),
          ],
        ),
      ),
    );
  }

  @override
  BaseBloc createBloc() => DashboardBloc(context.read<Api>());
}
