import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/accountsidescreen/termsandpolicy_view.dart';
import 'package:getto/accountsidescreen/widgets/Text_Description_view.dart';
import 'package:getto/accountsidescreen/widgets/Text_heading_view.dart';
import 'package:getto/main.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Terms_and_Condition_view extends StatefulWidget {
  const Terms_and_Condition_view({super.key});

  @override
  State<Terms_and_Condition_view> createState() => _TermsandCondition_viewState();
}

class _TermsandCondition_viewState extends State<Terms_and_Condition_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 55.0 , right: 20 , left: 20),
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
                    Center(child: Text('Terms & Policies' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),)),
                    SizedBox(width: 20,)
                  ],
                ),
                SizedBox(height: 20,),
                Text_Heading_view(Heading: 'General site usage last revised December 12-01-2023'),
                SizedBox(height: 6,),
                Text_Description_view(Description: 'Lorem ipsum dolor sit amet, consectetur '
                    'adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
                    ' Thus, in precise usage, the words breathing and ventilation are hyponyms, not synonyms, of respiration; but this prescription is not consistently followed, even by most health care providers,'
                    ' because the term respiratory rate (RR) is a well-established term in health care, even though it would need to be consistently replaced with ventilation rate if the precise usage were to be followed. ')
                ,SizedBox(height: 30),
                Text_Heading_view(Heading: '1.  Agreement'),
                SizedBox(height: 10),
                Text_Description_view(Description: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.'),
                SizedBox(height: 30),
                Text_Heading_view(Heading: '2.  Account'),
                SizedBox(height: 10),
                Text_Description_view(Description: 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.'),
                SizedBox(height: 30),
                Text_Heading_view(Heading: '3.  Relationship with Groceries'),
                SizedBox(height: 10),
                Text_Description_view(Description: 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
