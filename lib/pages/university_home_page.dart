import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/application/university/university_provider.dart';

class UniversityPage extends StatefulWidget {
  const UniversityPage({Key? key}) : super(key: key);

  @override
  State<UniversityPage> createState() => _UniversityPageState();
}

class _UniversityPageState extends State<UniversityPage> {
  final name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Riverpod"),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          return ref.watch(universityProvider).isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  itemCount:
                      ref.watch(universityProvider).listOfUniversity?.length ??
                          0,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(24),
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Column(
                        children: [
                          Text(ref
                                  .watch(universityProvider)
                                  .listOfUniversity?[index]
                                  .name ??
                              ""),
                          TextButton(
                              onPressed: () async {
                                // final Uri launchUri = Uri(
                                //     scheme: 'URL',
                                //     path: ref.watch(universityProvider).listOfUniversity?[index].domains?.first ??
                                //         "");
                                // await url_launcher.launchUrl(launchUri,
                                //     mode: LaunchMode.externalApplication);
                              },
                              child: Text(
                                ref
                                        .watch(universityProvider)
                                        .listOfUniversity?[index]
                                        .domains
                                        ?.first ??
                                    "",
                                style: const TextStyle(color: Colors.black),
                              )),
                        ],
                      ),
                    );
                  });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showTextDialog(),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showTextDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Name"),
            content: TextFormField(controller: name),
            actions: [
              Consumer(builder: (context, ref, child) {
                return ElevatedButton(
                    onPressed: () async {
                      Navigator.pop(context);
                      ref.read(universityProvider.notifier).getInfo(name.text);
                      name.clear();
                    },
                    child: const Text("Save"));
              })
            ],
          );
        });
  }
}
