import 'package:flutter/material.dart';
import 'package:flutter_application_1/pageTwo.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  FocusNode focusSenha = FocusNode();
  FocusNode focusTelefone = FocusNode();
  FocusNode focusCidade = FocusNode();

  final keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('PageOne'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: keyForm,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FractionallySizedBox(
                      widthFactor: 0.7,
                      child: TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: "E-mail",
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onSubmitted: (value) {
                          focusSenha.requestFocus();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.7,
                      child: TextFormField(
                        focusNode: focusSenha,
                        decoration: InputDecoration(
                          hintText: "Senha",
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        autovalidateMode: AutovalidateMode.always,
                        validator: (value) {
                          if (value!.length < 10) {
                            return "Precisa ter mais de 10 caracteres";
                          }
                          return null;
                        },
                        obscureText: true,
                        onFieldSubmitted: (value) {
                          focusTelefone.requestFocus();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.7,
                      child: TextField(
                        focusNode: focusTelefone,
                        decoration: InputDecoration(
                          hintText: "Telefone",
                          hintStyle: const TextStyle(
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onSubmitted: (value) {
                          focusCidade.requestFocus();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.7,
                      child: TextField(
                        focusNode: focusCidade,
                        decoration: InputDecoration(
                          hintText: "Cidade",
                          hintStyle: const TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            if (keyForm.currentState!.validate()) {
                              print("Usuario cadastrado");
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const PageTwo(),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:
                                      Text("Preencha os campos corretamente"),
                                ),
                              );
                            }
                          },
                          child: const Text("Cadastrar"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
