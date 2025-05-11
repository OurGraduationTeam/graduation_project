// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:gradution_project/cubit/cubit/users/user_cubit.dart';

// class RegisterScreen extends StatefulWidget {
//   @override
//   _RegisterScreenState createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   String _selectedGender = 'Male';

//   void _submitForm() {
//     if (_formKey.currentState!.validate()) {
//       BlocProvider.of<UserCubit>(context).register();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Register')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             children: [
//               TextField(
//                 controller:
//                     BlocProvider.of<UserCubit>(context).userNameController,
//                 decoration: const InputDecoration(labelText: 'Username'),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller:
//                     BlocProvider.of<UserCubit>(context).passwordController,
//                 obscureText: true,
//                 decoration: const InputDecoration(labelText: 'Password'),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: BlocProvider.of<UserCubit>(context).emailController,
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: const InputDecoration(labelText: 'Email'),
//               ),
//               const SizedBox(height: 10),
//               TextField(
//                 controller: BlocProvider.of<UserCubit>(context).ageController,
//                 keyboardType: TextInputType.number,
//                 decoration: const InputDecoration(labelText: 'Age'),
//               ),
//               const SizedBox(height: 10),
//               DropdownButtonFormField<String>(
//                 value: _selectedGender,
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     _selectedGender = newValue!;
//                   });
//                 },
//                 items: ['Male', 'Female', 'Other']
//                     .map((gender) => DropdownMenuItem(
//                           value: gender,
//                           child: Text(gender),
//                         ))
//                     .toList(),
//                 decoration: const InputDecoration(labelText: 'Gender'),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: _submitForm,
//                 child: const Text('Register'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
