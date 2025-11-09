import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // Remove 'const' because Colors.grey[900] isn't const
  final List<Widget> _screens = [
    const _HomePageContent(),
    Center(child: Text('🔍 Rechercher des services', style: TextStyle(color: Colors.grey[900]))),
    Center(child: Text('🔔 Notifications', style: TextStyle(color: Colors.grey[900]))),
    Center(child: Text('👤 Mon Profil', style: TextStyle(color: Colors.grey[900]))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.work, color: Colors.white),
            SizedBox(width: 8),
            Text(
              'khedmaTT',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
        elevation: 4,
        shadowColor: Colors.blue[900]?.withOpacity(0.2),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue[700],
        unselectedItemColor: Colors.grey[600],
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Rechercher'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Alertes'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
      ),
    );
  }
}

class _HomePageContent extends StatelessWidget {
  const _HomePageContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ❌ Remove 'const' because Colors.grey is used
          Text(
            'Bienvenue sur khedmaTT',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.grey[900], // Dark text on white
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Connectez les travailleurs tunisiens avec ceux qui ont besoin de leurs services.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700], // Muted but readable
              height: 1.5,
            ),
          ),
          const SizedBox(height: 40),
          _buildActionButton(
            context,
            label: 'Se Connecter',
            route: '/login',
            color: Colors.blue[700]!, // Use specific shade
            icon: Icons.login,
          ),
          const SizedBox(height: 20),
          _buildActionButton(
            context,
            label: 'S’inscrire',
            route: '/register',
            color: Colors.green[700]!, // Use specific shade
            icon: Icons.person_add,
          ),
          const SizedBox(height: 40),
          Text(
            'Pour artisans, agriculteurs, plombiers, mécaniciens, freelances…',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(
    BuildContext context, {
    required String label,
    required String route,
    required Color color,
    required IconData icon,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        icon: Icon(icon, size: 20, color: Colors.white),
        label: Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 6,
          shadowColor: color.withOpacity(0.3),
          padding: const EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
    );
  }
}