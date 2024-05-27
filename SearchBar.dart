import 'package:flutter/material.dart';
import 'package:flutter_application_12/Product.dart';
import 'package:flutter_application_12/product_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchBarScreen extends ConsumerStatefulWidget {
  @override
  _SearchBarScreenState createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends ConsumerState<SearchBarScreen> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  void _runFilter(String enteredKeyword) {
    // You can use ref.read(productProvider) to access the list of products
    // and filter based on the enteredKeyword
    // Example:
    // final products = ref.read(productProvider);
    // final results = products.where((product) =>
    //   product.name.toLowerCase().contains(enteredKeyword.toLowerCase())
    // ).toList();
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> products = ref.read(productProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Product List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              onChanged: _runFilter,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: 'Search',
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: products.isNotEmpty
                  ? ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return Card(
                          elevation: 1,
                          margin: const EdgeInsets.symmetric(vertical: 2),
                          child: ListTile(
                            leading: CircleAvatar(
                              radius: 30.0,
                              backgroundImage: NetworkImage(product.imageUrl),
                              backgroundColor: Colors.transparent,
                            ),
                            title: Text(product.name),
                            subtitle: Text(product.description),
                          ),
                        );
                      },
                    )
                  : const Center(
                      child: Text(
                        'No results found. Please try with a different search.',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
