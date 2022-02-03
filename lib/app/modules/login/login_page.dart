import '../../core/ui/themes/app_colors.dart';
import '../../core/ui/themes/app_images.dart';
import '../../core/ui/widgets/rounded_button_widget.dart';
import '../../core/ui/widgets/input_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primary,
      body: Center(
        child: Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24.0,
            ),
            child: Column(
              children: [
                Center(
                    child: Image.asset(AppImages.logoIoasys,
                        height: MediaQuery.of(context).size.height * 0.35)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: RichText(
                        text: TextSpan(
                          text: 'Seja bem vindo!\n',
                          style:
                              TextStyle(fontSize: 31, color: AppColors.white),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Calculadora IMC',
                              style: TextStyle(
                                fontSize: 27,
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const InputTextWidget(
                      hintText: 'Usuario',
                      iconData: Icons.email,
                    ),
                    const SizedBox(height: 8.0),
                    const InputTextWidget(
                      hintText: 'Senha',
                      iconData: Icons.lock,
                      obscureText: true,
                    ),
                    RoundedButtonWidget(
                      color: AppColors.black,
                      onPressed: () async {
                        Modular.to.navigate('/imc/');
                      },
                      child: Text(
                        'ENTRAR',
                        style: TextStyle(color: AppColors.white),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
