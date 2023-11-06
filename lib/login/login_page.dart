import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tecnical_test/login/components/input_field_widget.dart';
import 'package:tecnical_test/login/login_controller.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final LoginController controller = Modular.get<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF1f5465),Color(0xFF2d958d)])),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.04),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          InputFieldWidget(
                              key: const Key("inputUser"),
                              onChange: controller.setAccount,
                              icon: Icons.person,
                              label: "Usuário",
                              errorField: controller.errorAccount,
                              hasError: controller.errorAccountValidation),
                          InputFieldWidget(
                              key: const Key("inputPassword"),
                              inputs: [FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]'))],
                              onChange: controller.setPassword,
                              icon: Icons.lock, label: "Senha",
                              errorField: controller.errorPassword, hasError: controller.errorPasswordValidation),
                          const SizedBox(height: 22.0),
                        ]),

                    ElevatedButton(
                        key: const Key("btnEnter"),
                        onPressed: controller.login,
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.14,vertical: 10.0),
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                        child: const Text("Entrar",style: TextStyle(fontWeight: FontWeight.bold))),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    InkWell(
                        key: const Key("btnRedirect"),
                        onTap: controller.redirectPrivacyPage,
                        child: const Text("Politicas de Privacidade",style: TextStyle(color: Colors.white)))
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
