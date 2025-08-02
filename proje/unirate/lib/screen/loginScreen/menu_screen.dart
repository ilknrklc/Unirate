import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  String? selectedUniversity;
  String? selectedDepartment;

  final TextEditingController _schoolNumberController = TextEditingController();

  @override
  void dispose() {
    _schoolNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ÜniRate"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text("Üniversiteni Seç", style: TextStyle(fontSize: 16)),
            DropdownButton<String>(
              hint: const Text("Üniversite Seçiniz"),
              value: selectedUniversity,
              isExpanded: true,
              onChanged: (value) {
                setState(() {
                  selectedUniversity = value;
                });
              },
              items: [
                'Hacettepe Üniversitesi',
                'İstanbul Üniversitesi',
                'İstanbul Teknik Üniversitesi (İTÜ)',
                'Ankara Üniversitesi',
                'Orta Doğu Teknik Üniversitesi (ODTÜ)',
                'Ege Üniversitesi',
                'Gazi Üniversitesi',
                'Dokuz Eylül Üniversitesi',
                'Marmara Üniversitesi',
                'Atatürk Üniversitesi',
                'İstanbul Üniversitesi – Cerrahpaşa',
                'Yıldız Teknik Üniversitesi',
                'Fırat Üniversitesi',
                'Zonguldak Bülent Ecevit Üniversitesi',
              ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            ),
            const SizedBox(height: 10),

            const Text("Bölüm Seç", style: TextStyle(fontSize: 16)),
            DropdownButton<String>(
              hint: const Text("Bölüm Seçiniz"),
              value: selectedDepartment,
              isExpanded: true,
              onChanged: (value) {
                setState(() {
                  selectedDepartment = value;
                });
              },
              items: [
                'Bilgisayar Mühendisliği',
                'Elektrik-Elektronik Mühendisliği',
                'Makine Mühendisliği',
                'İnşaat Mühendisliği',
                'Endüstri Mühendisliği',
                'Çevre Mühendisliği',
                'Gıda Mühendisliği',
                'Kimya Mühendisliği',
                'Metalurji ve Malzeme Mühendisliği',
                'Jeoloji Mühendisliği',
                'Yazılım Mühendisliği',
              ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            ),
            const SizedBox(height: 10),

            TextField(
              controller: _schoolNumberController,
              decoration: const InputDecoration(
                labelText: "Okul Numaran",
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),

            const SizedBox(height: 30),

            // Menü Kartları
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                buildMenuCard("⭐ Hoca Değerlendir"),
                buildMenuCard("📝 Not Paylaşımı"),
                buildMenuCard("💬 Yorumlar"),
                buildMenuCard("🌐 Topluluk"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuCard(String title) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('$title açılıyor...')));
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          width: MediaQuery.of(context).size.width / 2 - 22,
          height: 100,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
