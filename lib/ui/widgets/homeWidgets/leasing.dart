import 'package:flutter/material.dart';
import 'package:grass_econs/app/responsiveness/res.dart';
import 'package:grass_econs/app/responsiveness/size.dart';
import 'package:grass_econs/app/utils/theme.dart';

class LeasingWidget extends StatelessWidget {
  const LeasingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Available balance",
                    style: CustomThemeData.generateStyle(
                      fontSize: McGyver.textSize(context, 1.4),
                      color: Colors.black45,
                    ),
                  ),
                  verticalSpaceXSmall(context),
                  Text(
                    "105.0054",
                    style: CustomThemeData.generateStyle(
                      fontSize: McGyver.textSize(context, 2),
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  verticalSpaceSmall(context),
                  LinearProgressIndicator(
                    value: 0.8,
                    color: Colors.blue[700],
                  ),
                  verticalSpaceSmall(context),
                  Row(
                    children: [
                      Text(
                        "1 435.00355601",
                        style: CustomThemeData.generateStyle(
                          fontSize: McGyver.textSize(context, 1.5),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Leased",
                        style: CustomThemeData.generateStyle(
                          fontSize: McGyver.textSize(context, 1.5),
                          color: Colors.black45,
                        ),
                      ),
                      horizontalSpaceXSmall(context),
                      const CircleAvatar(
                        radius: 3,
                      )
                    ],
                  ),
                  verticalSpaceXSmall(context),
                  const Divider(),
                  verticalSpaceXSmall(context),
                  Row(
                    children: [
                      Text(
                        "1 540.00905601",
                        style: CustomThemeData.generateStyle(
                          fontSize: McGyver.textSize(context, 1.5),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Total",
                        style: CustomThemeData.generateStyle(
                          fontSize: McGyver.textSize(context, 1.5),
                          color: Colors.black45,
                        ),
                      ),
                      horizontalSpaceXSmall(context),
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: Colors.blue[100],
                      )
                    ],
                  ),
                  verticalSpaceXSmall(context),
                  const Divider(),
                  verticalSpaceXSmall(context),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue[50], elevation: 0),
                      onPressed: () {},
                      child: Text(
                        "Start Lease",
                        style: CustomThemeData.generateStyle(
                          fontSize: McGyver.textSize(context, 1.5),
                          color: Colors.blue[900]!,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  verticalSpaceXSmall(context),
                ],
              ),
            ),
          ),
        ),
        verticalSpaceXSmall(context),
        Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 14),
            child: Row(
              children: [
                Text(
                  "View history",
                  style: CustomThemeData.generateStyle(
                    fontSize: McGyver.textSize(context, 1.5),
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  color: Colors.black45,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
