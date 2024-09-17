import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chin Themed Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromARGB(
                255, 0, 0, 0)), // Warna chin (campuran pink dan abu)
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Color(0xFF90A4AE), // Warna chin abu kebiruan
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Welcome Back, Enter Your Credentials to Login',
                  style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 19, 19, 19),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle:
                        TextStyle(color: Color.fromARGB(255, 11, 11, 11)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Navigate to Forgot Password Page
                    },
                    child: const Text('Forgot Password?'),
                    style: TextButton.styleFrom(
                      foregroundColor: Color.fromARGB(255, 5, 5, 5),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle login logic
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Logging in')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 49, 81, 86), // Warna tombol login
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Login',
                      style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?",
                        style:
                            TextStyle(color: Color.fromARGB(255, 14, 13, 13))),
                    TextButton(
                      onPressed: () {
                        // Navigate to Sign Up Page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()),
                        );
                      },
                      child: const Text('Sign Up'),
                      style: TextButton.styleFrom(
                        foregroundColor: Color.fromARGB(255, 9, 34, 68),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor:
            Color.fromARGB(255, 101, 131, 147), // Warna chin abu kebiruan
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Create Your Account',
                  style: TextStyle(
                      fontSize: 24,
                      color: Color.fromARGB(255, 18, 18, 18),
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                // Username field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Email field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Password field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 16),
                // Confirm Password field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle registration logic
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Registering')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 56, 86, 113),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Register',
                      style:
                          TextStyle(color: Color.fromARGB(255, 240, 245, 248))),
                ),
                const SizedBox(height: 20),
                const Text("or",
                    style: TextStyle(
                        color: Color.fromARGB(255, 22, 21, 21), fontSize: 16)),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Handle sign in with Google logic
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Signing up with Google')),
                    );
                  },
                  child: const Text('Sign in with Google'),
                  style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 0, 0, 0),
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                    TextButton(
                      onPressed: () {
                        // Navigate back to Login Page
                        Navigator.pop(context);
                      },
                      child: const Text('Sign In'),
                      style: TextButton.styleFrom(
                        foregroundColor: Color.fromARGB(255, 5, 57, 67),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
