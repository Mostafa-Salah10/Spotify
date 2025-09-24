String? validateFormField({String? value}) {
  if (value!.isEmpty) {
    return 'This field is required';
  } else if (value.length < 6) {
    return 'This field must be greater than or equal to 6 characters';
  } else {
    return null;
  }
}
