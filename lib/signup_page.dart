import 'package:amni/login_page.dart';
import 'package:amni/style_file.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}
class _SignUpPageState extends State<SignUpPage> {

  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();

  late String email, password, name;
  late bool _passwordVisible, _isloding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Center(
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.arrow_back, color: Colors.white,) ,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(
                  top: 20,
                  bottom: 15,
                  right: MediaQuery.of(context).size.width * .15,
                  left: MediaQuery.of(context).size.width * .15,
                ),
                child: Center(
                  child: Text(
                    'WellCome !',
                    style: GoogleFonts.sourceCodePro(
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * .10,
                left: MediaQuery.of(context).size.width * .10,
              ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .60,
                  decoration:  BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Form(
                      key: _formKey1,
                      child:  Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              bottom: 20,
                            ),
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
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: AppInputStyle('First Name'),
                              validator: (String? value ){
                                if(value!.isEmpty){
                                  return "Enter Valid Email";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: AppInputStyle('Last Name'),
                              validator: (String? value ){
                                if(value!.isEmpty){
                                  return "Enter Valid Email";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                              decoration: AppInputStyle('Email'),
                              validator: (String? value ){
                                if(value!.isEmpty){
                                  return "Enter Valid Email";
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              decoration: AppInputStyle('PassWord'),
                              validator: (String? value ){
                                if(value!.isEmpty){
                                  return "Enter Valid Email";
                                }
                                return null;
                              },
                            ),
                          ),

                          SizedBox(
                            width: double.infinity,
                            child: Visibility(
                              replacement: const Center(child: CircularProgressIndicator()),
                              child: ElevatedButton(
                                style: buttonStyle(),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => LogInPage(),),);
                                },
                                child: const Icon(Icons.arrow_forward_ios,size: 25,),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}