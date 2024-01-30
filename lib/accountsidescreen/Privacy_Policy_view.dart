import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/accountsidescreen/termsandpolicy_view.dart';
import 'package:getto/accountsidescreen/widgets/Text_Description_view.dart';
import 'package:getto/accountsidescreen/widgets/Text_heading_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 55.0 , right: 20 , left: 20),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: (){
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: TermsAndPolicy_view(),
                          withNavBar: false, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation: PageTransitionAnimation.cupertino,
                        );
          
                      },
                      child: Icon(Icons.arrow_back_ios_new , size: 20,)),
                  Center(child: Text('Privacy Policy' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),)),
                  SizedBox(width: 20,)
                ],
              ),
              SizedBox(height: 30,),
              Text_Heading_view(Heading: 'Privacy Policy for Farmer Store'),
              SizedBox(height: 10,),
              Text_Description_view(Description: 'At farmerstore.com, accessible from www.farmerstore.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by farmerstore.com and how we use it.'
                  'This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in farmerstore.com. This policy is not applicable to any information collected offline or via channels other than this website.'),
              SizedBox(height: 30,),
              Text_Heading_view(Heading: 'Consent'),
              SizedBox(height: 10,),
              Text_Description_view(Description: 'By using our website, you hereby consent to our Privacy Policy and agree to its terms.'),
              SizedBox(height: 30,),
              Text_Heading_view(Heading: 'Information we collect'),
              SizedBox(height: 10,),
              Text_Description_view(Description: 'The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information,. If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide')
          
            ],
          ),
        ),
      ),
    );
  }
}
