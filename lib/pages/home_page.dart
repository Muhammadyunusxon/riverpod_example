// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/count/count_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter example')),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            return ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                itemCount: ref.watch(counterProvider).listOfName?.length ?? 0,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade300,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Center(
                      child: Text(
                        ref.watch(counterProvider).listOfName?[index] ?? "",
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                  );
                });
          },
        ),
      ),
      floatingActionButton: Consumer(builder: (context, ref, child) {
        return FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    content: TextFormField(
                      controller: textEditingController,
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            ref
                                .read(counterProvider.notifier)
                                .addName(textEditingController.text);
                            Navigator.pop(context);
                          },
                          child: const Text("Save"))
                    ],
                  );
                });
          },
          child: const Icon(Icons.add),
        );
      }),
    );
  }
}
