import 'package:flutter/material.dart';
import 'package:large/providers/products.dart';
import 'package:large/screens/home/components/see_more_button.dart';
import 'package:large/screens/home/components/top_banner.dart';
import 'package:provider/provider.dart';

import 'new_product_cards.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  late Future fetchData;
  @override
  void initState() {
    super.initState();
    fetchData = context.read<Products>().fetchItemFromServer();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchData,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return const Center(
              child: CircularProgressIndicator(),
            );
          default:
            if (snapshot.hasError) {
              return const Center(
                child: Text('failed to fetch'),
              );
            } else {
              return LayoutBuilder(
                builder: (p0, constraints) => SingleChildScrollView(
                  child: Container(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        TopBanner(constraints: constraints),
                        const SeeMoreTextButton(
                          title: 'محصولات جدید',
                        ),
                        defaultHeightPadding(constraints),
                        NewProductCards(
                          constraints: constraints,
                        ),
                        defaultHeightPadding(constraints),
                        const SeeMoreTextButton(title: 'محصولات پرفروش'),
                        defaultHeightPadding(constraints),
                        NewProductCards(constraints: constraints),
                      ],
                    ),
                  ),
                ),
              );
            }
        }
      },
    );
  }

  SizedBox defaultHeightPadding(BoxConstraints constraints) {
    return SizedBox(
      height: constraints.maxHeight * .02,
    );
  }
}
