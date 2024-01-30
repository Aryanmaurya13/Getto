import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/accountsidescreen/Privacy_Policy_view.dart';
import 'package:getto/accountsidescreen/terms_and_condition_view.dart';
import 'package:getto/accountsidescreen/widgets/terms_row_view.dart';
import 'package:getto/main.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../mainscreens/home.dart';

class TermsAndPolicy_view extends StatefulWidget {
  const TermsAndPolicy_view({super.key});

  @override
  State<TermsAndPolicy_view> createState() => _TermsAndPolicy_viewState();
}

class _TermsAndPolicy_viewState extends State<TermsAndPolicy_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 55.0 , right: 20 , left: 20),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: (){
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: homes(),
                          withNavBar: false, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation: PageTransitionAnimation.cupertino,
                        );

                      },
                      child: Icon(Icons.arrow_back_ios_new , size: 20,)),
                  Center(child: Text('Terms & Policies' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),)),
                  SizedBox(width: 20,)
                ],
              ),
              SizedBox(height: 25,),
              Divider(
                color: 'E2E2E2'.toColor(),
              ),
              Terms_Row_view(Title: 'About Us'),
              Divider(
                color: 'E2E2E2'.toColor(),
              ),

              GestureDetector(
                  onTap: (){
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: PrivacyPolicyView(),
                      withNavBar: false, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    );

                  },
                  child: Terms_Row_view(Title: 'Privacy Policy')),

              Divider(
                color: 'E2E2E2'.toColor(),
              ),
              Terms_Row_view(Title: 'Refund Policy'),

              Divider(
                color: 'E2E2E2'.toColor(),
              ),
              Terms_Row_view(Title: 'Shipping Policy'),

              Divider(
                color: 'E2E2E2'.toColor(),
              ),
              GestureDetector(
                onTap: (){
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: Terms_and_Condition_view(),
                    withNavBar: false, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );

                },
                  child: Terms_Row_view(Title: 'Terms & Conditions')),
              Divider(
                color: 'E2E2E2'.toColor(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
