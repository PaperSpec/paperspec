import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:paperspec/models/ModelProvider.dart';
import 'amplifyconfiguration.dart';

void main() {
  runApp(const PaperSpecApp());
}

class PaperSpecApp extends StatefulWidget {
  const PaperSpecApp({super.key});

  @override
  State<PaperSpecApp> createState() => _AppState();
}

class _AppState extends State<PaperSpecApp> {
  // Configure Amplify plugins and initialize connection
  Future<void> _configureAmplify() async {
    // Add any Amplify plugins you want to use
    final authPlugin = AmplifyAuthCognito();
    final apiPlugin = AmplifyAPI(modelProvider: ModelProvider.instance);

    await Amplify.addPlugins([authPlugin, apiPlugin]);

    // You can use addPlugins if you are going to be adding multiple plugins
    // await Amplify.addPlugins([authPlugin, analyticsPlugin]);

    // Once Plugins are added, configure Amplify
    // Note: Amplify can only be configured once.
    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      safePrint(
          "Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
    }
  }

  @override
  Widget build(BuildContext buildContext) {
    return FutureBuilder(
      future: _configureAmplify(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          // TODO: Error screen
          return Text("Error");
        }
        // Show application once load is complete
        // TODO: Home screen
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp();
        }
        // Otherwise, show loading screen
        // TODO: Loading screen
        return Text("Loading...");
      },
    );
  }
}
