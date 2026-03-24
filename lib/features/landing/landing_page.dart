import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import 'widgets/navbar.dart';
import 'widgets/hero_section.dart';
import 'widgets/how_it_works.dart';
import 'widgets/features_section.dart';
import 'widgets/pricing_section.dart';
import 'widgets/testimonials_section.dart';
import 'widgets/cta_section.dart';
import 'widgets/footer.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController _scrollController = ScrollController();

  // GlobalKeys for each section
  final GlobalKey _heroKey = GlobalKey();
  final GlobalKey _howItWorksKey = GlobalKey();
  final GlobalKey _featuresKey = GlobalKey();
  final GlobalKey _pricingKey = GlobalKey();
  final GlobalKey _testimonialsKey = GlobalKey();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToSection(String section) {
    GlobalKey? targetKey;

    switch (section) {
      case 'Home':
        _scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
        );
        return;
      case 'How it Works':
        targetKey = _howItWorksKey;
        break;
      case 'Features':
        targetKey = _featuresKey;
        break;
      case 'Pricing':
        targetKey = _pricingKey;
        break;
      case 'Testimonials':
        targetKey = _testimonialsKey;
        break;
    }

    if (targetKey?.currentContext != null) {
      Scrollable.ensureVisible(
        targetKey!.currentContext!,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
        alignment: 0.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: Column(
        children: [
          // Sticky Navbar — outside scroll view
          Navbar(onSectionTap: _scrollToSection),
          // Scrollable content
          Expanded(
            child: SelectionArea(
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 1200),
                        child: Column(
                          children: [
                            HeroSection(key: _heroKey),
                            HowItWorks(key: _howItWorksKey),
                            FeaturesSection(key: _featuresKey),
                            PricingSection(key: _pricingKey),
                            TestimonialsSection(key: _testimonialsKey),
                            const CTASection(),
                          ],
                        ),
                      ),
                    ),
                    const Footer(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
