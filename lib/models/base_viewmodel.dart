
import 'package:flutter/material.dart';
import 'package:kids_learning/widget/colors.dart';

class BaseVM extends ChangeNotifier {
  bool _loading = false;
  String? apiError;
  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    apiError = null;
    notifyListeners();
  }

  setApiError(String? userError) {
    apiError = userError;
  }
}

class LoaderView extends StatelessWidget {
  const LoaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.15),
      child: const Center(
        child: CircularProgressIndicator(color: AppColors.skyBlue),
      ),
    );
  }
}