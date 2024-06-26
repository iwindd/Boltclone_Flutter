import 'package:boltclone_stacked/ui/views/search/search_view.form.dart';
import 'package:boltclone_stacked/ui/widgets/TextFormFieldSearch.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'search_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'point'),
  FormTextField(name: 'destination'),
])
class SearchView extends StackedView<SearchViewModel> with $SearchView {
  // ignore: use_super_parameters
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchViewModel viewModel,
    Widget? child,
  ) {
    final theme = Theme.of(context);

    return Scaffold(
        backgroundColor: theme.colorScheme.background,
        appBar: AppBar(
          title: const Text(
            "เส้นทางของคุณ",
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          leading: IconButton(
              onPressed: viewModel.onClose, icon: const Icon(Icons.close)),
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            color: theme.colorScheme.secondary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormFieldSearch(
                  controller: pointController,
                  hintText: "ตำแหน่งที่นัดรับ",
                  prefixIcon: Icons.my_location,
                  suffixIcon: Icons.map,
                  autofocus: false,
                ),
                TextFormFieldSearch(
                  controller: destinationController,
                  hintText: "จุดหมายปลายทาง",
                  prefixIcon: Icons.near_me,
                  suffixIcon: Icons.map,
                  autofocus: true,
                ),
              ],
            ),
          ),
        ));
  }

  @override
  void onDispose(SearchViewModel viewModel) {
    super.onDispose(viewModel);
    disposeForm();
  }

  @override
  void onViewModelReady(SearchViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  SearchViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchViewModel();
}
