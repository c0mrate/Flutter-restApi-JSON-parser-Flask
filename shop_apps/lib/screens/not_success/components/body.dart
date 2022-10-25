import 'package:flutter/material.dart';
import 'package:shop_apps/components/default_button.dart';
import 'package:shop_apps/screens/home/home_screen.dart';
import 'package:shop_apps/screens/sign_in/components/sign_form.dart';
import 'package:shop_apps/screens/sign_in/sign_in_screen.dart';
import 'package:shop_apps/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/wrong.png",
          height: SizeConfig.screenHeight * 0.4, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Something Went Wrong...",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Retry",
            press: () {
              // Navigator.pushNamed(context, HomeScreen.routeName);
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => SignInScreen()),
              );
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
