import 'package:flutter/material.dart';

void main() {
  runApp(const SmartKrishiApp());
}

class SmartKrishiApp extends StatefulWidget {
  const SmartKrishiApp({super.key});

  @override
  State<SmartKrishiApp> createState() => _SmartKrishiAppState();
}

class _SmartKrishiAppState extends State<SmartKrishiApp> {
  bool isBangla = true;

  final List<FeatureItem> FeaturesBangla = const [
    FeatureItem(
      icon: Icons.local_florist,
      title: '🌿 ফসলের রোগ নির্ণয়',
      subtitle:
          'AI মডেল ব্যবহার করে পাতার ছবি দেখে রোগ শনাক্ত করে এবং চিকিৎসা সাজেস্ট করে।',
    ),
    FeatureItem(
      icon: Icons.science,
      title: '🧪 মাটি বিশ্লেষণ ও সার পরামর্শ',
      subtitle: 'pH ও NPK ডেটা বিশ্লেষণ করে উপযুক্ত সার ও ডোজ নির্ধারণ করে।',
    ),
    FeatureItem(
      icon: Icons.show_chart,
      title: '📈 বাজার দামের পূর্বাভাস',
      subtitle:
          'AI মডেল দিয়ে আগাম ফসলের দাম অনুমান করে লাভজনক চাষে সহায়তা করে।',
    ),
    FeatureItem(
      icon: Icons.cloud_queue,
      title: '🌦 আবহাওয়াভিত্তিক চাষ পরিকল্পনা',
      subtitle:
          'আবহাওয়ার পূর্বাভাস ও মাটির ডেটা দেখে চাষের সময় ও ফসল বাছাইয়ে সহায়তা করে।',
    ),
    FeatureItem(
      icon: Icons.groups,
      title: '🤝 কৃষক-টু-কৃষক জ্ঞান বিনিময়',
      subtitle:
          'কমিউনিটি ফোরামের মাধ্যমে কৃষকরা একে অপরের অভিজ্ঞতা ও পরামর্শ বিনিময় করতে পারে।',
    ),
    FeatureItem(
      icon: Icons.agriculture,
      title: '🌾 ফলনের পূর্বাভাস',
      subtitle:
          'বীজ, মৌসুম ও জমির তথ্যের উপর ভিত্তি করে সম্ভাব্য ফলনের পূর্বাভাস দেয়।',
    ),
    FeatureItem(
      icon: Icons.mic,
      title: '🎙 ভয়েস কমান্ড ফিচার (Future Plan)',
      subtitle:
          'ভয়েস দিয়ে অ্যাপ ব্যবহার, যেখানে কোনো বাটন প্রেসের দরকার নেই (hands-free)।',
    ),
    FeatureItem(
      icon: Icons.eco,
      title: '🌍 কার্বন নিঃসরণ হ্রাস',
      subtitle: 'AI ব্যবহার করে পরিবেশবান্ধব কৃষিকাজ নিশ্চিত করে।',
    ),
    FeatureItem(
      icon: Icons.help,
      title: '❓ সাহায্য ও সমর্থ',
      subtitle: 'AI ব্যবহার করে পরিবেশবান্ধব কৃষিকাজ নিশ্চিত করে।',
    ),
  ];

  final List<FeatureItem> FeaturesEnglish = const [
    FeatureItem(
      icon: Icons.local_florist,
      title: '🌿 Crop Disease Detection',
      subtitle:
          'Uses AI model to identify diseases by leaf images and suggest treatment.',
    ),
    FeatureItem(
      icon: Icons.science,
      title: '🧪 Soil Analysis & Fertilizer Recommendation',
      subtitle:
          'Analyzes pH and NPK data to determine suitable fertilizers and dosages.',
    ),
    FeatureItem(
      icon: Icons.show_chart,
      title: '📈 Market Price Forecast',
      subtitle:
          'AI model predicts future crop prices to help profitable farming.',
    ),
    FeatureItem(
      icon: Icons.cloud_queue,
      title: '🌦 Weather-Based Crop Planning',
      subtitle:
          'Helps choose crops and planting time based on weather and soil data.',
    ),
    FeatureItem(
      icon: Icons.groups,
      title: '🤝 Farmer-to-Farmer Knowledge Sharing',
      subtitle:
          'Farmers exchange experience and advice through community forums.',
    ),
    FeatureItem(
      icon: Icons.agriculture,
      title: '🌾 Crop Yield Prediction',
      subtitle:
          'Predicts potential yield based on seed, season, and land data.',
    ),
    FeatureItem(
      icon: Icons.mic,
      title: '🎙 Voice Command Feature ',
      subtitle: 'Use app by voice without pressing any button (hands-free).',
    ),
    FeatureItem(
      icon: Icons.eco,
      title: '🌍 Carbon Emission Reduction',
      subtitle: 'Ensures eco-friendly farming using AI.',
    ),
    FeatureItem(
      icon: Icons.help,
      title: '❓ Help & Support',
      subtitle: 'Get assistance and support for using the app effectively.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final slide1Features = isBangla ? FeaturesBangla : FeaturesEnglish;

    return MaterialApp(
      title: isBangla ? 'Krishi Sheba' : 'Krishi Sheba',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green.shade700),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(isBangla ? 'Krishi Sheba' : 'Krishi Sheba'),
          backgroundColor: Colors.green.shade700,
          actions: [
            IconButton(
              tooltip: isBangla ? 'Switch to English' : 'বাংলায় পরিবর্তন',
              icon: const Icon(Icons.language),
              onPressed: () {
                setState(() {
                  isBangla = !isBangla;
                });
              },
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 10),
            ...slide1Features.map((feature) => FeatureTile(feature: feature)),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

class FeatureItem {
  final IconData icon;
  final String title;
  final String subtitle;
  final String? trailingText;

  const FeatureItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.trailingText,
  });
}

class FeatureTile extends StatelessWidget {
  final FeatureItem feature;

  const FeatureTile({super.key, required this.feature});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(feature.icon, size: 32, color: Colors.green.shade700),
        title: Text(
          feature.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(feature.subtitle),
        trailing: feature.trailingText != null
            ? Text(
                feature.trailingText!,
                style: const TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                ),
              )
            : null,
      ),
    );
  }
}
