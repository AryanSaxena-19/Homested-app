import 'package:flutter/material.dart';
import '../../components/social_card.dart';
import '../../constants.dart';
import '../../size_config.dart';
import 'components/sign_up_form.dart';

class SignUpScreen extends StatelessWidget{
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 16),
                  Text("Register Account", style: headingStyle),
                  Text(
                    "Complete your details or continue \nwith social media",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.screenHeight! * 0.08 ),
                  SignUpForm(),
                  SizedBox(height: SizeConfig.screenHeight! * 0.08),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocalCard(
                        icon: "asstes/icons/google-iicon.svg",
                        press: () {},
                      ),
                      SocalCard(
                        icon: "asstes/icons/facebook-2.svg",
                        press: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(20)),
                  Text(
                    'By continuing your confirm that you agree \nwith our Term and Condition',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}