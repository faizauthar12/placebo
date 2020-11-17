part of 'pages.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final String username = "admin";
  final String password = "staff";

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              height: _size.height,
              width: _size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 81, bottom: 17),
                    child: Image(
                      width: _size.width / 2,
                      height: _size.height / 5,
                      image: AssetImage("assets/logo.png"),
                    ),
                  ),
                  Text(
                    "DSC Flutter Weekly",
                    textAlign: TextAlign.center,
                    style: blackTextStyle.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 42.0,
                  ),
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Username",
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Password",
                        hintText: "Password"),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: kAccentColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Login",
                        style: whiteTextStyle.copyWith(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onPressed: () {
                      print(nameController.text);
                      print(passwordController.text);
                      if (nameController.text != null &&
                          passwordController.text != null) {
                        if (nameController.text == username &&
                            passwordController.text == password) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(
                                name: username,
                              ),
                            ),
                          );
                        }
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

// void apalah() => blabla;
