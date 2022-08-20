import 'package:flutter/material.dart';
import '../../../app/responsiveness/res.dart';
import '../../../app/responsiveness/size.dart';
import '../../../app/utils/theme.dart';
import 'circle.dart';
import 'listTile.dart';

class TokensWidget extends StatelessWidget {
  const TokensWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      hintText: 'Search',
                      hintStyle: CustomThemeData.generateStyle(
                          fontSize: 15, color: Colors.black45),
                      prefixIcon: const Icon(Icons.search),
                      fillColor: Colors.grey[100],
                      filled: true),
                ),
              ),
            ),
            horizontalSpaceSmall(context),
            const Icon(
              Icons.swap_vert,
              color: Colors.black54,
            )
          ],
        ),
        verticalSpaceSmall(context),
        Column(
          children: [
            HomeListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Waves ',
                        style: CustomThemeData.generateStyle(
                          fontSize: McGyver.textSize(context, 1.3),
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      WidgetSpan(
                        child: Icon(
                          Icons.favorite,
                          color: Colors.blue[800],
                          size: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              subtitle: Text(
                "5.0054",
                style: CustomThemeData.generateStyle(
                  fontSize: McGyver.textSize(context, 2),
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: CustomCircleAvatar(
                color: Colors.white,
                icon: Icons.check,
                child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(45 / 360),
                  child: Container(
                    width: 18,
                    height: 18,
                    color: Colors.blue[800],
                  ),
                ),
              ),
            ),
            HomeListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Pigeon / My Token",
                  style: CustomThemeData.generateStyle(
                    fontSize: McGyver.textSize(context, 1.3),
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),
              ),
              subtitle: Text(
                "1 444.04556321",
                style: CustomThemeData.generateStyle(
                  fontSize: McGyver.textSize(context, 2),
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: CustomCircleAvatar(
                color: Colors.black45,
                icon: Icons.center_focus_weak_outlined,
                child: Text(
                  "P",
                  style: CustomThemeData.generateStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            HomeListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "US Dollar",
                  style: CustomThemeData.generateStyle(
                      fontSize: McGyver.textSize(context, 1.3),
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
              ),
              subtitle: Text(
                "199.24",
                style: CustomThemeData.generateStyle(
                  fontSize: McGyver.textSize(context, 2),
                  fontWeight: FontWeight.w500,
                ),
              ),
              leading: CustomCircleAvatar(
                color: Colors.green,
                icon: Icons.check,
                child: Text(
                  "\$",
                  style: CustomThemeData.generateStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
