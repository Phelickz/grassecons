import 'package:flutter/material.dart';
import 'package:grass_econs/app/responsiveness/res.dart';
import 'package:grass_econs/app/responsiveness/size.dart';
import 'package:grass_econs/app/utils/theme.dart';
import 'package:grass_econs/ui/widgets/skeleton.dart';
import 'package:one_context/one_context.dart';

import '../../widgets/homeWidgets/homeBody.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Skeleton(
      backgroundColor: Colors.white,
      isBusy: false,
      body: const HomeBody(),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.black,
        onTap: (value) {
          _currentIndex = value;
          setState(() {});
          if (value == 2) {
            OneContext.instance.showModalBottomSheet(
              isDismissible: false,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              builder: (context) {
                return Column(
                  children: [
                    verticalSpaceXSmall(context),
                    Center(
                      child: Container(
                        width: 30,
                        height: 3,
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                    ),
                    verticalSpaceSmall(context),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange[50],
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.orange,
                                  ),
                                ),
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Icon(
                                      Icons.arrow_upward,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          horizontalSpaceXSmall(context),
                          Text(
                            "Send",
                            style: CustomThemeData.generateStyle(
                                fontSize: McGyver.textSize(context, 1.7),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    verticalSpaceSmall(context),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green[50],
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.green,
                                  ),
                                ),
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Icon(
                                      Icons.arrow_downward,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          horizontalSpaceXSmall(context),
                          Text(
                            "Receive",
                            style: CustomThemeData.generateStyle(
                                fontSize: McGyver.textSize(context, 1.7),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    verticalSpaceSmall(context),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.purple[50],
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.purple,
                                  ),
                                ),
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Icon(
                                      Icons.swap_horiz_rounded,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          horizontalSpaceXSmall(context),
                          Text(
                            "Exchange",
                            style: CustomThemeData.generateStyle(
                                fontSize: McGyver.textSize(context, 1.7),
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    verticalSpaceSmall(context),
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[50],
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.blue,
                                  ),
                                ),
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Icon(
                                      Icons.qr_code_scanner,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          horizontalSpaceXSmall(context),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "QR Scan",
                                style: CustomThemeData.generateStyle(
                                    fontSize: McGyver.textSize(context, 1.7),
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Invoice, addresses",
                                style: CustomThemeData.generateStyle(
                                  fontSize: McGyver.textSize(context, 1.4),
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    verticalSpaceMedium(context),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.close,
                              size: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            );
          }
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Icon(
                Icons.wallet,
                color: _currentIndex == 0 ? Colors.black : Colors.black38,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.repeat_rounded,
              color: _currentIndex == 1 ? Colors.black : Colors.black38,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              color: Colors.blue.withOpacity(.1),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.add,
                  color: Colors.blue,
                  size: 18,
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
              color: _currentIndex == 3 ? Colors.black : Colors.black38,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              color: _currentIndex == 4 ? Colors.black : Colors.black38,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
