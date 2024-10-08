import 'package:design_system_sample_app/DesignSystem/Components/Buttons/ActionButton/action_button.dart';
import 'package:design_system_sample_app/DesignSystem/Components/Buttons/ActionButton/action_button_view_model.dart';
import 'package:design_system_sample_app/DesignSystem/Components/InputField/input_text.dart';
import 'package:design_system_sample_app/DesignSystem/Components/InputField/input_text_view_model.dart';
import 'package:design_system_sample_app/DesignSystem/Components/LinkedLabel/linked_label.dart';
import 'package:design_system_sample_app/DesignSystem/Components/LinkedLabel/linked_label_view_model.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void handleLogin() {}

  void handleSignUp() {}

  void handleForgotPassword() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white, // Define o fundo como branco
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.grey[300],
              child: Center(child: Icon(Icons.person, size: 50, color: Colors.grey)),
            ),
            SizedBox(height: 20),

            StyledInputField.instantiate(
              viewModel: InputTextViewModel(
                controller: emailController,
                placeholder: 'E-mail',
                password: false,
              ),
            ),
            SizedBox(height: 16),

            StyledInputField.instantiate(
              viewModel: InputTextViewModel(
                controller: passwordController,
                placeholder: 'Password',
                password: true,
                suffixIcon: Icon(Icons.visibility),
                togglePasswordVisibility: () {},
              ),
            ),
            SizedBox(height: 8),

            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: handleForgotPassword,
                child: Text('Forgot Password'),
              ),
            ),

            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 55, 
              child: ActionButton.instantiate(
                viewModel: ActionButtonViewModel(
                  size: ActionButtonSize.large,
                  style: ActionButtonStyle.primary,
                  text: 'Login',
                  onPressed: handleLogin,
                ),
              ),
            ),

            SizedBox(height: 150), 

            LinkedLabel.instantiate(
              viewModel: LinkedLabelViewModel(
                fullText: "Don't Have An Account? ",
                linkedText: 'Sign Up',
                onLinkTap: handleSignUp,
              ),
            ),
            SizedBox(height: 20), 

            SizedBox(
              width: 90,
              child: ElevatedButton(
                onPressed: handleSignUp,
                child: Text('Sign Up'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  padding: EdgeInsets.symmetric(vertical: 16), 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
