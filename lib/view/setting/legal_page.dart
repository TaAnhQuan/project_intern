import 'package:flutter/material.dart';

class LegalPage extends StatelessWidget {
  const LegalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Legal & About',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
          color: Colors.grey.shade700,
        ),
      ),
      body: const Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
          'Suspendisse ac lacinia velit, ac sollicitudin eros. Sed nec eleifend enim. '
          'Vestibulum vel orci vel mi efficitur varius. '
          'Nam vitae purus in arcu suscipit pharetra sed non quam. '
          'Maecenas a ex sed felis efficitur scelerisque ac vel elit. '
          'Nullam euismod mi non velit efficitur, ut elementum ante pretium. '
          'Vestibulum ac elit sapien. Nunc tincidunt turpis sed ex aliquam blandit. '
          'Curabitur ut neque euismod, bibendum neque eget, sollicitudin velit. '
          'Nulla semper consectetur nunc sed sagittis.'),
    );
  }
}
