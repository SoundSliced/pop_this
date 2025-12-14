import 'package:flutter/material.dart';
import 'package:pop_this/pop_this.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return OverlaySupport.global(
          child: MaterialApp(
            title: 'PopThis Example',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              useMaterial3: true,
            ),
            home: const MyHomePage(),
          ),
        );
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('PopThis Example'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  PopThis.pop(
                    context: context,
                    child: Container(
                      height: 200,
                      width: 300,
                      alignment: Alignment.center,
                      child: const Text('Simple Popup'),
                    ),
                  );
                },
                child: const Text('Simple Popup'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  PopThis.pop(
                    context: context,
                    duration: const Duration(seconds: 3),
                    showTimer: true,
                    child: Container(
                      height: 150,
                      width: 250,
                      alignment: Alignment.center,
                      child: const Text('Auto Dismiss with Timer'),
                    ),
                  );
                },
                child: const Text('Popup with Timer'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  PopThis.showSuccessOverlay(
                    successMessage: 'Operation Successful!',
                    duration: const Duration(seconds: 2),
                  );
                },
                child: const Text('Success Overlay'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  PopThis.showErrorOverlay(
                    errorMessage: 'Something went wrong!',
                    duration: const Duration(seconds: 2),
                  );
                },
                child: const Text('Error Overlay'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  PopThis.pop(
                    context: context,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('First Popup'),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            PopThis.pop(
                              context: context,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text('Second Popup (Stacked)'),
                                  const SizedBox(height: 20),
                                  ElevatedButton(
                                    onPressed: () {
                                      PopThis.pop(
                                        context: context,
                                        child: Container(
                                          height: 150,
                                          width: 200,
                                          alignment: Alignment.center,
                                          child: const Text('Third Popup!'),
                                        ),
                                      );
                                    },
                                    child: const Text('Open Third Popup'),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: const Text('Open Another Popup'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('Stacked Popups'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
