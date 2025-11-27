import 'package:flutter/material.dart';
import 'package:store_app/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/utils/app_constants.dart';
import 'package:store_app/views/screens/authentication_screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // LOGIN HEADER
              Text(
                'Login to your account',
                style: GoogleFonts.lato(
                  color: AppColors.cerulean,
                  fontSize: AppConstants.fontSizeLarge,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              Text(
                'Explore the world exclusives',
                style: GoogleFonts.lato(
                  color: AppColors.cerulean,
                  fontSize: 14,
                  letterSpacing: 0.2,
                ),
              ),
              Image.asset(
                'assets/images/Illustration.png',
                width: 200,
                height: 200,
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email',
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w600,
                    fontSize: AppConstants.fontSizeSmall,
                  ),
                ),
              ),

              // EMAIL INPUT
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  hintStyle: GoogleFonts.nunitoSans(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  // Kada input NIJE fokusiran - underline
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.cerulean,
                      width: 1,
                    ),
                  ),
                  // Kada input JE fokusiran - border okolo
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.cerulean,
                      width: 2,
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/email.png',
                      color: AppColors.cerulean,
                      width: 16,
                      height: 16,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Password',
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.w600,
                    fontSize: AppConstants.fontSizeSmall,
                  ),
                ),
              ),

              // PASSWORD INPUT
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: GoogleFonts.nunitoSans(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  // Kada input NIJE fokusiran - underline
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.cerulean,
                      width: 1,
                    ),
                  ),
                  // Kada input JE fokusiran - border okolo
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.cerulean,
                      width: 2,
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/icons/password.png',
                      color: AppColors.cerulean,
                      width: 16,
                      height: 16,
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: AppColors.cerulean,
                  ),
                ),
              ),

              SizedBox(height: 20),

              // LOGIN BUTTON
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppConstants.defaultRadius,
                  ),
                  gradient: LinearGradient(
                    colors: [
                      AppColors.cerulean,
                      AppColors.lightBlue,
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: GoogleFonts.nunitoSans(
                      color: Colors.white,
                      fontSize: AppConstants.fontSizeMedium,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // SIGN UP OPTION
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Need an Account?',
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                    child: Text(
                      ' Sign Up',
                      style: GoogleFonts.nunitoSans().copyWith(
                        color: AppColors.cerulean,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
