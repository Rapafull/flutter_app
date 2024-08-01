part of 'form_validator_cubit.dart';

class FormValidatorState extends Equatable {
  const FormValidatorState({
    this.autovalidateMode=AutovalidateMode.disabled,
    this.email,
    this.password="",
    this.confirmPassword,
    this.name,
    this.address,
    this.city,
    this.obscureText=true,
  });

  final AutovalidateMode autovalidateMode;
  final String? email;
  final String password;
  final String? confirmPassword;
  final String? name;
  final String? address;
  final String? city;
  final bool obscureText;

  FormValidatorState copyWith({
    AutovalidateMode? autovalidateMode,
    String? email,
    String? password,
    String? confirmPassword,
    String? name,
    String? address,
    String? city,
    bool? obscureText,
  }) {
    return FormValidatorState(
      autovalidateMode: autovalidateMode ?? this.autovalidateMode,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      name: name ?? this.name,
      address: address ?? this.address,
      city: city ?? this.city,
      obscureText: obscureText ?? this.obscureText,
    );
  }

  @override
  List<Object> get props => [obscureText];
}
