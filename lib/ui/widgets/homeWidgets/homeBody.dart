// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:grass_econs/app/responsiveness/res.dart';
import 'package:grass_econs/app/responsiveness/size.dart';
import 'package:grass_econs/app/utils/theme.dart';
import 'package:grass_econs/ui/widgets/homeWidgets/rowWidgets.dart';
import 'package:grass_econs/ui/widgets/homeWidgets/tokens.dart';
import 'leasing.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  String currentTab = 'Tokens';
  bool view1 = true;
  bool view2 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // verticalSpaceSmall(context),
          Row(
            children: const [
              Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ),
              Spacer(),
              CircleAvatar(
                radius: 13,
              )
            ],
          ),
          verticalSpaceXSmall(context),
          Text(
            "Wallet",
            style: CustomThemeData.generateStyle(
              fontSize: McGyver.textSize(context, 1.5),
              color: Colors.black45,
            ),
          ),
          verticalSpaceXSmall(context),
          Row(
            children: [
              Text(
                "Mobile Team",
                style: CustomThemeData.generateStyle(
                  fontSize: McGyver.textSize(context, 2.3),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              horizontalSpaceXSmall(context),
              const Icon(
                Icons.swap_vert,
                color: Colors.black38,
                size: 15,
              )
            ],
          ),
          verticalSpaceSmall(context),
          SizedBox(
            width: double.infinity,
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                RowItemsWidget(
                  color: Colors.blue[800],
                  icon: const Icon(
                    Icons.qr_code,
                    color: Colors.white,
                  ),
                  text: 'Your address',
                ),
                const RowItemsWidget(
                  color: Colors.white,
                  icon: Icon(
                    Icons.person_outline,
                    color: Colors.black,
                  ),
                  text: 'Aliases',
                  textColor: Colors.black45,
                ),
                RowItemsWidget(
                  color: Colors.white,
                  icon: SizedBox(
                    height: 20,
                    width: 40,
                    child: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  text: 'Balance',
                  textColor: Colors.black45,
                ),
                const RowItemsWidget(
                  color: Colors.white,
                  icon: Icon(
                    Icons.compare_arrows_outlined,
                    color: Colors.black,
                  ),
                  text: 'Receive',
                  textColor: Colors.black45,
                ),
              ],
            ),
          ),
          verticalSpaceSmall(context),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  currentTab = 'Tokens';
                  setState(() {});
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tokens",
                      style: CustomThemeData.generateStyle(
                        fontSize: McGyver.textSize(context, 1.6),
                        fontWeight: FontWeight.bold,
                        color: currentTab == "Tokens"
                            ? Colors.black
                            : Colors.black38,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    currentTab == "Tokens"
                        ? Container(
                            width: 20,
                            height: 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue[800],
                            ),
                          )
                        : const Offstage()
                  ],
                ),
              ),
              horizontalSpaceSmall(context),
              GestureDetector(
                onTap: () {
                  currentTab = 'Leasing';
                  setState(() {});
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Leasing",
                      style: CustomThemeData.generateStyle(
                        fontSize: McGyver.textSize(context, 1.6),
                        fontWeight: FontWeight.bold,
                        color: currentTab == "Leasing"
                            ? Colors.black
                            : Colors.black38,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    currentTab == "Leasing"
                        ? Container(
                            width: 20,
                            height: 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue[800],
                            ),
                          )
                        : const Offstage()
                  ],
                ),
              ),
            ],
          ),
          verticalSpaceSmall(context),
          if (currentTab == "Tokens") ...[const TokensWidget()],
          if (currentTab == 'Leasing') ...[const LeasingWidget()],

          verticalSpaceSmall(context),
          GestureDetector(
            onTap: () {
              setState(() {
                view1 = !view1;
              });
            },
            child: Row(
              children: [
                Text(
                  "Hidden tokens (2)",
                  style: CustomThemeData.generateStyle(
                    fontSize: McGyver.textSize(context, 1.7),
                    color: Colors.black54,
                  ),
                ),
                const Spacer(),
                Icon(
                  view1
                      ? Icons.keyboard_arrow_down_rounded
                      : Icons.keyboard_arrow_up_rounded,
                  color: Colors.black54,
                )
              ],
            ),
          ),
          verticalSpaceSmall(context),
          GestureDetector(
            onTap: () {
              setState(() {
                view2 = !view2;
              });
            },
            child: Row(
              children: [
                Text(
                  "Suspicious tokens (15)",
                  style: CustomThemeData.generateStyle(
                    fontSize: McGyver.textSize(context, 1.7),
                    color: Colors.black54,
                  ),
                ),
                const Spacer(),
                Icon(
                  view2
                      ? Icons.keyboard_arrow_down_rounded
                      : Icons.keyboard_arrow_up_rounded,
                  color: Colors.black54,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
