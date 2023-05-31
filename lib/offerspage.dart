import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Offer(
          title: "Free Karak Chai",
          description: "with order of 10 nimbu paanis",
        ),
        Offer(
          title: "Free Karak Chai",
          description: "with order of 10 nimbu paanis",
        ),
        Offer(
          title: "Free Karak Chai",
          description: "with order of 10 nimbu paanis",
        ),
        Offer(
          title: "Free Karak Chai",
          description: "with order of 10 nimbu paanis",
        ),
        Offer(
          title: "Free Karak Chai",
          description: "with order of 10 nimbu paanis",
        ),
        Offer(
          title: "Free Karak Chai",
          description: "with order of 10 nimbu paanis",
        ),
        Offer(
          title: "Free Karak Chai",
          description: "with order of 10 nimbu paanis",
        ),
        Offer(
          title: "Free Karak Chai",
          description: "with order of 10 nimbu paanis",
        )
      ],
    );
  }
}

class Offer extends StatelessWidget {
  final String title;
  final String description;
  const Offer({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: Card(
          color: Colors.amber.shade50,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.amber.shade100,
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(title,
                            style: Theme.of(context).textTheme.headlineSmall),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(description,
                          style: Theme.of(context).textTheme.titleLarge),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
