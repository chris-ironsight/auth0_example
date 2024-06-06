import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';
import 'package:auth0_example/authentication_button.dart';
import 'package:global_configuration/global_configuration.dart';

class ExampleApp extends StatefulWidget {
  const ExampleApp({super.key});

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  bool _isLoggedIn = false;
  String _result = '';

  late Auth0 auth0;
  late WebAuthentication webAuth;

  @override
  void initState() {
    super.initState();

    auth0 = Auth0(
      GlobalConfiguration().getValue('AUTH0_DOMAIN'),
      GlobalConfiguration().getValue('AUTH0_CLIENT_ID'),
    );
    webAuth = auth0.webAuthentication();
  }

  Future<void> webAuthLogin() async {
    String result;

    try {
      final credentials = await webAuth.login(
        audience: GlobalConfiguration().getValue('AUDIENCE'),
        parameters: {
          "prompt": "login",
        },
      );

      result = credentials.idToken;
    } catch (e) {
      result = e.toString();
    }

    setState(() {
      _result = result;
    });
  }

  Future<void> webAuthLogout() async {
    String result;

    try {
      await webAuth.logout();

      setState(() {
        _isLoggedIn = false;
      });
      result = 'Logged out.';
    } catch (e) {
      result = e.toString();
    }

    setState(() {
      _result = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Auth0 Example')),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (_isLoggedIn)
                      AuthenticationButton(
                          label: 'Web Auth Logout', action: webAuthLogout)
                    else
                      AuthenticationButton(
                          label: 'Web Auth Login', action: webAuthLogin),
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                child: Center(
                  child: Text(_result),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
