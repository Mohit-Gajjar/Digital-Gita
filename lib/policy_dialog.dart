import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PolicyDialog extends StatelessWidget {
  const PolicyDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Expanded(
              child: FutureBuilder(
            future:
                Future.delayed(const Duration(milliseconds: 150)).then((value) {
              return rootBundle.loadString('assets/privacy_policy.md');
            }),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Markdown(
                  data: snapshot.data.toString(),
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          )),
          Container(
           margin: const EdgeInsets.all(10),

            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Ok"),
            ),
          )
        ],
      ),
    );
  }
}
