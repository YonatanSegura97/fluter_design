import 'package:design_app/widgets/background.dart';
import 'package:design_app/widgets/card_table.dart';
import 'package:design_app/widgets/custom_bottom_navigation.dart';
import 'package:design_app/widgets/page_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        child: Scaffold(
          body: Stack(
            children: const [Background(), _HomeBody()],
          ),
          bottomNavigationBar: const CustomBottomNavigationBar(),
        ),
        value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          //Titles
          PageTitle(),

          //Card grid
          CardTable()
        ],
      ),
    );
  }
}
