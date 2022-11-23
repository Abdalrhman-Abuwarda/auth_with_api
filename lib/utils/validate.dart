import 'dart:core';

class Validate {
  // Validate._();
  static String? validateEmail(value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your email address';
    }
    // Check if the entered email has the right format
    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    // Return null if the entered email is valid
    return null;
  }

  static String? validatePassword(value) {
    if (value == null || value.trim().isEmpty) {
      return 'This field is required';
    }
    if (value.trim().length < 3) {
      return 'Password must be at least 8 characters in length';
    }
    // Return null if the entered password is valid
    return null;
  }

  static String? validateUserName(value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter full your name';
    }
    if (value.trim().length < 8) {
      return 'Please entar valid name';
    }
    // Return null if the entered password is valid
    return null;
  }
}
