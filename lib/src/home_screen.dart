import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/src/router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Home",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Colors.white,
              ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 12,
                ),
              ),
              onPressed: () => Navigator.pushNamed(context, AppRouter.rMVC),
              child: Text(
                "MVC",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan,
                padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 12,
                ),
              ),
              onPressed: () => Navigator.pushNamed(context, AppRouter.rMVP),
              child: Text(
                "MVP",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 12,
                ),
              ),
              onPressed: () => Navigator.pushNamed(context, AppRouter.rMVVM),
              child: Text(
                "MVVM",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                padding: const EdgeInsetsDirectional.symmetric(
                  vertical: 12,
                ),
              ),
              onPressed: () => Navigator.pushNamed(context, AppRouter.rMVI),
              child: Text(
                "MVI",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
