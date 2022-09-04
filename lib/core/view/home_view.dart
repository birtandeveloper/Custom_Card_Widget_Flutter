import 'package:custom_card_widget/core/utility/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_card_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(height: 10),
          _buildMainCard(context),
          const SizedBox(height: 5),
          _buildSecondaryCard(context),
        ]),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(
        appBarTitle,
        style: Theme.of(context).textTheme.headline6,
      ),
      centerTitle: false,
    );
  }

  CustomCard _buildMainCard(BuildContext context) {
    return CustomCard(
      color: colorLightGreen,
      text: cardTitleFirst,
      size: MediaQuery.of(context).size.height * 0.30,
      image: Image.network(
        imageUrlPrimary,
        height: MediaQuery.of(context).size.height * 0.20,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }

  _buildSecondaryCard(BuildContext context) {
    return CustomCard(
      color: colorPurple,
      text: cardTitleSecond,
      size: MediaQuery.of(context).size.height * 0.30,
      image: Image.network(
        imgageUrlSecondary,
        height: MediaQuery.of(context).size.height * 0.20,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
    );
  }
}
