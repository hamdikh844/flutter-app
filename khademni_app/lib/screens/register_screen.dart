import 'package:flutter/material.dart';

// Color constants
const Color kTextColor = Color(0xFF212121);
const Color kMutedText = Color(0xFF616161);
const Color kLabelColor = Color(0xFF757575);
const Color kInputFill = Color(0xFFF5F5F5);
const Color kInputBorder = Color(0xFFE0E0E0);
const Color kIconColor = Color(0xFFFFB300); // Yellow

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _obscurePassword = true;

  void _signInWithGoogle() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Inscription avec Google')),
    );
  }

  void _signInWithGitHub() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Inscription avec GitHub')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: kTextColor,
        elevation: 0,
        title: const Text(
          'S’inscrire',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kTextColor,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Email
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: kTextColor),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email, color: kIconColor),
                labelText: 'Adresse e-mail',
                labelStyle: const TextStyle(color: kLabelColor),
                filled: true,
                fillColor: kInputFill,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: kInputBorder),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              ),
            ),
            const SizedBox(height: 20),

            // 🔹 Nom complet
            TextField(
              style: const TextStyle(color: kTextColor),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person, color: kIconColor),
                labelText: 'Nom complet',
                labelStyle: const TextStyle(color: kLabelColor),
                filled: true,
                fillColor: kInputFill,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: kInputBorder),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              ),
            ),
            const SizedBox(height: 20),

            // 🔹 Téléphone
            TextField(
              keyboardType: TextInputType.phone,
              style: const TextStyle(color: kTextColor),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone, color: kIconColor),
                labelText: 'Numéro de téléphone',
                labelStyle: const TextStyle(color: kLabelColor),
                filled: true,
                fillColor: kInputFill,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: kInputBorder),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              ),
            ),
            const SizedBox(height: 20),

            // 🔹 CIN
            TextField(
              keyboardType: TextInputType.number,
              style: const TextStyle(color: kTextColor),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.badge, color: kIconColor),
                labelText: 'Numéro CIN',
                labelStyle: const TextStyle(color: kLabelColor),
                filled: true,
                fillColor: kInputFill,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: kInputBorder),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                hintText: 'Ex: 12345678',
              ),
            ),
            const SizedBox(height: 20),

            // 🔐 Mot de passe
            TextField(
              obscureText: _obscurePassword,
              style: const TextStyle(color: kTextColor),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock, color: kIconColor),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscurePassword ? Icons.visibility_off : Icons.visibility,
                    color: kIconColor,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),
                labelText: 'Mot de passe',
                labelStyle: const TextStyle(color: kLabelColor),
                filled: true,
                fillColor: kInputFill,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: kInputBorder),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.blue, width: 2),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              ),
            ),
            const SizedBox(height: 32),

            // 🔵 Main Register Button
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                ),
                child: const Text(
                  'Créer un compte',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // 🔸 Divider text
            Center(
              child: Text(
                'ou inscrivez-vous avec',
                style: TextStyle(
                  color: kMutedText,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 🔹 Social Login Buttons (at the BOTTOM)
            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: _signInWithGoogle,
                    icon: const Icon(Icons.g_mobiledata, color: Color(0xFF4285F4)), // Google blue
                    label: const Text('Google', style: TextStyle(fontWeight: FontWeight.w500)),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.grey),
                      foregroundColor: Colors.grey[800],
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: _signInWithGitHub,
                    // ✅ Use Icons.github if available (Flutter >=3.7)
                    // If you get error, replace with Icons.code
                    icon: const Icon(Icons.code, color: Colors.black),
                    label: const Text('GitHub', style: TextStyle(fontWeight: FontWeight.w500)),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.grey),
                      foregroundColor: Colors.grey[800],
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // 🔙 Login link
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Vous avez déjà un compte ? ',
                    style: TextStyle(
                      color: kMutedText,
                      fontSize: 15,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text(
                      'Se connecter',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30), // Extra padding at bottom for scroll
          ],
        ),
      ),
    );
  }
}