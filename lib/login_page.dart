import 'package:flutter/material.dart';
import 'package:help_force/home_page.dart';
import 'package:help_force/new_user.dart';
import 'package:help_force/pallet.dart';
import 'package:help_force/widgets/background_image.dart';
import '../widgets/widget.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
            children: [
              SizedBox(
                height: 150,
                child: const Center(
                  child: Text('Help Forces',
                  style: kHeading,),
                ),
              ),
              const SizedBox(height: 150
              ,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 19),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(19)
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 19),
                          border: InputBorder.none,
                          hintText: 'Email',
                          icon:
                           Icon(Icons.email),
                          hintStyle: kbodystyle,
                        ),
                        style: kbodystyle,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(19)
                        ),
                        child:const TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 19),
                            border: InputBorder.none,
                            hintText: 'Password',
                            icon: Icon(Icons.password),
                            hintStyle: kbodystyle
                          ),
                          obscureText: true,
                          style: kbodystyle,
                          textInputAction: TextInputAction.done,
                        ) ,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child:
                  TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NewUser()));// Add your logic for New User
            },
            child: const Text(
              'New User',
              style: TextStyle(color: Colors.white),
            ),
          ),
                  ),
                  Expanded(child: 
          TextButton(
            onPressed: () {
              // Add your logic for Forgot Password
            },
            child: const Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.white),
            ),
          ),
                  ),
                ],
              ),
              const SizedBox(height: 19,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: Colors.transparent,
                  ),
                  child: Text(
                    'Login',
                    style: kbodystyle.copyWith(color: Colors.grey),
                  ),
              ),
            ],
            ),
          ),
        )
      ],
    );
  }
}

