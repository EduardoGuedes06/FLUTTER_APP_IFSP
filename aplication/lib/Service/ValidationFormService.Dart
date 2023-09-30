class FormValidationService {
  String validateFirstName(String value) {
    if (value.isEmpty) {
      return 'Please enter your first name';
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
      return 'Only letters allowed';
    }
    return '';
  }

  String validateLastName(String value) {
    if (value.isEmpty) {
      return 'Please enter your last name';
    } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
      return 'Only letters allowed';
    }
    return '';
  }

  String validateEmail(String value) {
    if (value.isEmpty) {
      return 'Please enter an email address';
    } else if (value.length > 50) {
      return 'Maximum 50 characters';
    }
    return '';
  }

  String validatePassword(String value) {
    if (value.isEmpty) {
      return 'Please enter a password';
    } else if (value.length < 12 || !RegExp(r'^(?=.*[0-9])(?=.*[!@#$%^&*()_+{}|:;<>,.?~]).{12,}$').hasMatch(value)) {
      return 'Must contain at least 12 characters, with a number and a special character';
    }
    return '';
  }
}
