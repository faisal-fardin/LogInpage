
import 'package:amni/login_page.dart';
import 'package:amni/signup_page.dart';
import 'package:amni/slideleft_page.dart';
import 'package:amni/slideright_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInSignUpPage extends StatefulWidget {
  const LogInSignUpPage({super.key});
  @override
  State<LogInSignUpPage> createState() => _LogInSignUpPageState();
}
class _LogInSignUpPageState extends State<LogInSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Container(
         child: Column(
           children: [
              Padding(padding: const EdgeInsets.only(top: 120, bottom: 22),
               child: Center(
                 child: Text(
                    'Hello !',
                    style: GoogleFonts.sourceCodePro(
                      fontSize: 50,
                    ),
                  ),
                ),
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 GestureDetector(
                   behavior: HitTestBehavior.opaque,
                   onTap: () {
                      Navigator.push(
                        context,
                        SlideRightRoute(
                          page:  SignUpPage(),
                        ),
                      );
                    },
                   child: Container(
                     height: MediaQuery.of(context).size.height * .55,
                     width: MediaQuery.of(context).size.width * .45,
                     decoration: const BoxDecoration(
                       color: Colors.cyan,
                       borderRadius: BorderRadius.only(
                         topRight: Radius.circular(20),
                         bottomRight: Radius.circular(20),
                       ),
                     ),
                     child:  Padding(
                         padding: const EdgeInsets.only(
                           bottom: 22,
                           top: 28,
                         ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Text(
                                'Sign Up',
                                style: GoogleFonts.sourceCodePro(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8,bottom: 8),
                              child: Text(
                                'New Here?',
                                style: GoogleFonts.sourceCodePro(
                                  fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                            ),
                           Padding(
                             padding: const EdgeInsets.all(16.0),
                             child: Text(
                             'Dont worry, Just sign up to access to the apps',
                             style: GoogleFonts.sourceCodePro(
                                 fontSize: 18,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white
                             ),
                               textAlign: TextAlign.right,
                           ),
                           ),
                          ],
                       ),
                     ),
                   ),
                  ),
                 const Spacer(),
                 GestureDetector(
                   behavior: HitTestBehavior.opaque,
                   onTap: () {
                     Navigator.push(
                       context,
                       SlideLeftRoute(
                         page: const LogInPage(),
                       ),
                     );
                   },
                   child: Container(
                     height: MediaQuery.of(context).size.height * .50,
                     width: MediaQuery.of(context).size.width * .45,
                     decoration: const BoxDecoration(
                       color: Colors.blue,
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(20),
                         bottomLeft: Radius.circular(20),
                       ),
                     ),
                     child:  Padding(
                       padding: const EdgeInsets.only(
                         bottom: 22,
                         top: 28,
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(bottom: 8),
                             child: Text(
                               'Sign In',
                               style: GoogleFonts.sourceCodePro(
                                   fontSize: 18,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.white
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 8,bottom: 8),
                             child: Text(
                               'Returning',
                               style: GoogleFonts.sourceCodePro(
                                   fontSize: 18,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.white
                               ),
                             ),
                           ),
                            Padding(
                             padding: const EdgeInsets.all(9),
                             child: Text(
                               "Just sign in to resume what are were doing",
                               style: GoogleFonts.sourceCodePro(
                                   fontSize: 18,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.white
                               ),
                               textAlign: TextAlign.left,
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                 ),
               ],
             ),
              Padding(
               padding: const EdgeInsets.only(top: 10.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Padding(padding: const EdgeInsets.only(right: 10),
                     child: Container(
                       width: 50,
                       height: 50,
                       decoration: const BoxDecoration(
                         color: Colors.red,
                         boxShadow: [
                           BoxShadow(color: Colors.grey),
                         ],
                         shape: BoxShape.circle,
                       ),
                       child: const Center(
                         child: FaIcon(
                           FontAwesomeIcons.google,
                           color: Colors.white,
                         ),
                       ),
                     ),
                   ),
                   Padding(padding: const EdgeInsets.only(right: 10),
                     child: Container(
                       width: 50,
                       height: 50,
                       decoration: const BoxDecoration(
                         color: Colors.blue,
                         boxShadow: [
                           BoxShadow(color: Colors.grey),
                         ],
                         shape: BoxShape.circle,
                       ),
                       child: const Center(
                         child: FaIcon(
                           FontAwesomeIcons.twitter,
                           color: Colors.white,
                         ),
                       ),
                     ),
                   ),
                   Padding(padding: const EdgeInsets.only(right: 10),
                     child: Container(
                       width: 50,
                       height: 50,
                       decoration: const BoxDecoration(
                         color: Colors.indigo,
                         boxShadow: [
                           BoxShadow(color: Colors.grey),
                         ],
                         shape: BoxShape.circle,
                       ),
                       child: const Center(
                         child: FaIcon(
                           FontAwesomeIcons.facebook,
                           color: Colors.white,
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             )
           ],

         ),
       ),
     ),
    );
  }
}

