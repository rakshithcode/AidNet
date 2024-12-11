import 'package:flutter/material.dart';
import 'package:help_force/home_page.dart';
import 'package:help_force/pallet.dart';
import 'package:help_force/widgets/background_image.dart';

class NewUser extends StatefulWidget {
  const NewUser({super.key});

  @override
  State<NewUser> createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
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
                  child: Text('New User',
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
                            hintText: 'Set New Password',
                            icon: Icon(Icons.password),
                            hintStyle: kbodystyle
                          ),
                          obscureText: true,
                          style: kbodystyle,
                          textInputAction: TextInputAction.done,
                        ) ,
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
                    'Sign In',
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