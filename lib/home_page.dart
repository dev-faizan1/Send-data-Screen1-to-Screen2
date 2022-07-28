import 'package:flutter/material.dart';
import 'quotes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Quotes> quotes = [
    Quotes(
        quote:
            'America was not built on fear. America was built on courage, on imagination and an unbeatable determination to do the job at hand',
        author: 'Faizan'),
    Quotes(
        quote:
            'America was not built on fear. America was built on courage, on imagination and an unbeatable determination to do the job at hand',
        author: 'Faizan'),
    Quotes(
        quote:
            'America was not built on fear. America was built on courage, on imagination and an unbeatable determination to do the job at hand',
        author: 'Faizan'),
    Quotes(
        quote:
            'America was not built on fear. America was built on courage, on imagination and an unbeatable determination to do the job at hand',
        author: 'Faizan'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data passing')),
      body: Column(
        children: quotes
            .map(
              (q) => QuoteCard(
                q: Quotes(author: q.author,quote: q.quote),
              ),
            )
            .toList(),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final Quotes? q;
 const QuoteCard({Key? key, this.q}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(10.0),
        elevation: 2.0,
        color: Colors.red.shade400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '${q?.quote}',
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${q?.author}',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
