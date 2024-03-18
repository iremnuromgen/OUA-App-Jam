import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Menü açma işlevi eklenebilir
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Arama işlevi eklenebilir
            },
          ),
        ],
        title: Text(
          "Yerel Mücevherleri Keşfedin",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.orange,
              padding: EdgeInsets.all(10),
            ),
            SizedBox(height: 20),
            // 3 adet resim kutucuğu ve altlarına "text" yazısı
            Column(
              children: [
                _buildImageBox(context, "images/57-1-istanbuldaki-gezilecek-yerler.jpg", "İstanbul Şehir Turu ", "İstanbul Şehir Turu", "YAsya ve Avrupa kıtasının buluştuğu İstanbul Boğazı'yla başlıyoruz. Boğaz Köprüsü, Topkapı Sarayı, Sultanahmat Camii, Ayasofya gibi hazineleri ve nicelerini içeren Tarihi yarımada, Eminönü, Haliç, Pierre loti, Eyüp, Balat, Haydarpaşa, Kalamış ile bir görsel şölene dönüşüyor uçuşumuz.","FOTOĞRAF ÇEK VE YÜKLE",),
                SizedBox(height: 20),
                _buildImageBox(context, "images/92280_4k-ultra-hd-istanbul-wallpapers-hd-desktop-backgrounds-3840x2160_3840x2160_h.jpg", "İstanbul Manzara Gezisi", "İstanbul Manzara Gezisi ", "Büyük Çamlıca Tepesi. Çamlıca'nın tepeleri şehirde manzara izlemek için en ünlü noktalardan biri","FOTOĞRAF ÇEK VE YÜKLE",),
                SizedBox(height: 20),
                _buildImageBox(context, "images/Belgrad-orman-doga.jpg", "İstanbul Doğa Gezisi", "İstanbul Doğa Gezisi ", " Avrupa Yakası’nda Maslak ile Eyüp arasında konumlanan, doğusunda İstanbul Boğazı batısında ise Karadeniz‘in doğal sınırlarına sahip olan Belgrad Ormanı; Bizans ve Osmanlı dönemlerinde İstanbul’a içme suyu sağlayan en önemli kaynaktı. Avrupa ","FOTOĞRAF ÇEK VE YÜKLE",),
                SizedBox(height: 20),
                // "Seyahat Anılarımız" başlığı altına resimler ve pusula simgesi
                SizedBox(height: 20),
                // "Seyahat Anılarımız" başlığı
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Seyahat Anılarımız",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildSmallImageBox(context, "images/57-1-istanbuldaki-gezilecek-yerler.jpg", "Şehir Turu"),
                    _buildSmallImageBox(context, "images/92280_4k-ultra-hd-istanbul-wallpapers-hd-desktop-backgrounds-3840x2160_3840x2160_h.jpg", "Manzara Gezisi"),
                    _buildSmallImageBox(context, "images/Belgrad-orman-doga.jpg", "Doğa Gezisi"),
                    GestureDetector(
                      onTap: () {
                        // Pusula simgesine tıklandığında yapılacak işlemler
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CompassScreen()),
                        );
                      },
                      child: Icon(Icons.explore, color: Colors.orange, size: 60,),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            // En alt kısımdaki semboller
            GestureDetector(
              onTap: () {
                // Sembollere tıklandığında yapılacak işlemler
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SymbolScreen()),
                );
              },
              child: Container(
                color: Colors.orange,
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.map, size: 40, color: Colors.white),
                    Icon(Icons.person, size: 40, color: Colors.white),
                    Icon(Icons.confirmation_num, size: 40, color: Colors.white),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageBox(BuildContext context, String imagePath, String bottomLeftText, String bottomRightText, String description, String text) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        // Resme tıklandığında yapılacak işlemler
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailScreen(imagePath: imagePath, title: bottomLeftText, description: description, text: text)),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8), // Sağ ve sol kenarlarda boşluk ekler
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10), // Tüm köşeleri kavisli yapar
          child: Column(
            children: [
              Image.asset(
                imagePath, // Resim yolu
                fit: BoxFit.cover, // Resmi kutucuğa sığdırmak için
                width: screenWidth - 16, // Ekran genişliğine göre ayarlanan genişlik (kenarlardaki padding değeri kadar azaltılır)
                height: (screenWidth - 16) * 0.5, // Ekran genişliğinin yarısı kadar yükseklik
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text(bottomLeftText),
                  Text(bottomRightText),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSmallImageBox(BuildContext context, String imagePath, String title) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        // Küçük resme tıklandığında yapılacak işlemler
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailScreen(imagePath: imagePath, title: title, description: '', text: '')),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8), // Sağ ve sol kenarlarda boşluk ekler
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10), // Tüm köşeleri kavisli yapar
          child: Image.asset(
            imagePath, // Resim yolu
            fit: BoxFit.cover, // Resmi kutucuğa sığdırmak için
            width: screenWidth * 0.2, // Ekran genişliğinin beşte biri kadar genişlik
            height: screenWidth * 0.2, // Ekran genişliğinin beşte biri kadar yükseklik
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String text;

  DetailScreen({required this.imagePath, required this.title, required this.description, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange, // Geri tuşunun olduğu bölgenin arka plan rengi
        title: Text(title),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start, // Resim ve açıklamaları ekranın üstüne hizalar
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Yatayda 20, dikeyde 10 piksel boşluk
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10), // Köşeleri kavisli yapar
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Fotoğraf çekme ve yükleme işlevi eklenebilir
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange, // Sembol arka plan rengi turuncu
                          ),
                          child: Icon(Icons.camera_alt, color: Colors.white), // Sembol rengi beyaz
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Resmi Yükle",
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        "Keşiflerinizi İzlerken, Anılarınızı Yakalayın",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        description,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.orange,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.map, size: 40, color: Colors.white),
                Icon(Icons.person, size: 40, color: Colors.white),
                Icon(Icons.confirmation_num, size: 40, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class CompassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pusula Sayfası"),
      ),
      body: Center(
        child: Text("Pusula sayfası"),
      ),
    );
  }
}

class SymbolScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sembol Sayfası"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Seyahat Anılarımız",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          _buildSmallImageBox(context, "images/57-1-istanbuldaki-gezilecek-yerler.jpg", "Şehir Turu"),
          _buildSmallImageBox(context, "images/92280_4k-ultra-hd-istanbul-wallpapers-hd-desktop-backgrounds-3840x2160_3840x2160_h.jpg", "Manzara Gezisi"),
          _buildSmallImageBox(context, "images/Belgrad-orman-doga.jpg", "Doğa Gezisi"),
          SizedBox(height: 40),
          // En alt kısımdaki semboller
          Container(
            color: Colors.orange,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.map, size: 40, color: Colors.white),
                Icon(Icons.person, size: 40, color: Colors.white),
                Icon(Icons.confirmation_num, size: 40, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSmallImageBox(BuildContext context, String imagePath, String title) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        // Küçük resme tıklandığında yapılacak işlemler
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailScreen(imagePath: imagePath, title: title, description: '', text: '')),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8), // Sağ ve sol kenarlarda boşluk ekler
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10), // Tüm köşeleri kavisli yapar
          child: Image.asset(
            imagePath, // Resim yolu
            fit: BoxFit.cover, // Resmi kutucuğa sığdırmak için
            width: screenWidth * 0.2, // Ekran genişliğinin beşte biri kadar genişlik
            height: screenWidth * 0.2, // Ekran genişliğinin beşte biri kadar yükseklik
          ),
        ),
      ),
    );
  }
}
