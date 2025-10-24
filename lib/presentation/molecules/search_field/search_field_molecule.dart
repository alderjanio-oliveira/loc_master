import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/presentation/molecules/search_field/search_field_controller.dart';

class SearchFieldMolecule<T> extends GetView<SearchFieldController> {
  final Future<List<T>> Function(String query) searchFunction;
  final Widget Function(T item) itemBuilder;
  final void Function(T) onSelect;
  final String hint;
  final TextEditingController fieldController;

  SearchFieldMolecule({
    super.key,
    required this.searchFunction,
    required this.itemBuilder,
    required this.onSelect,
    required this.hint,
    required this.fieldController,
  });

  RxList<T> suggestions = <T>[].obs;
  bool loading = false;

  void search(String query) async {
    if (query.isEmpty) {
      suggestions.clear();
      return;
    }
    loading = true;
    final results = await searchFunction(query);
    suggestions.assignAll(results);
    loading = false;
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: fieldController,
              decoration: InputDecoration(
                hintText: hint,
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    fieldController.clear();
                    suggestions.clear();
                  },
                ),
              ),
              onChanged: (value) => search(value),
            ),
            if (loading) LinearProgressIndicator(),
            if (suggestions.isNotEmpty)
              Container(
                constraints: BoxConstraints(maxHeight: 200),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: suggestions.length,
                  itemBuilder: (context, index) {
                    final item = suggestions[index];
                    return InkWell(
                      onTap: () {
                        fieldController.text = item.toString();
                        onSelect(item);
                        suggestions.clear();
                      },
                      child: itemBuilder(item),
                    );
                  },
                ),
              ),
          ],
        ));
  }
}
