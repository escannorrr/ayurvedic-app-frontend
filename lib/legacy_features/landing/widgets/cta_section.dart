import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/screen_size.dart';

class CTASection extends StatelessWidget {
  const CTASection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);

    return Container(
      width: double.infinity,
      color: AppColors.surface,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 0 : 32,
        vertical: isMobile ? 0 : 96,
      ),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(isMobile ? 0 : 32),
        ),
        child: Stack(
          children: [
            // Decorative leaf overlay on right half
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Opacity(
                opacity: 0.1,
                child: Image.network(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuCjJVgLqFlkq1Zz4ZEUTNSHprJakJAwNGFvLVNXNQVbSd8G7_iwwIAr0nLL5lXIwqmTdzdZFEmp7rD0d7gE_JKntMuuPj-Pbvr0UmK2J33bCbWYmLntCF9FG3TcB9fpVcfNNiNuWSZ48ReneTT1l9gjBuINWAcedzb9jVp7GnZLD19UPFRDNc_vJRoe513eU04AZjDlc1xtLU78mQblGM-VSgb7v6vKp1y4J3HmkEAFIX2HQephL0FW6FC-MR_qCufQSXulC9Nolsg',
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                ),
              ),
            ),
            // Content
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 32 : 80,
                vertical: isMobile ? 64 : 80,
              ),
              child: isMobile
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _CTALeft(),
                        const SizedBox(height: 64),
                        _CTARight(),
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: _CTALeft()),
                        const SizedBox(width: 64),
                        Expanded(child: _CTARight()),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CTALeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bring the Intelligence of Ayurveda to your Clinic.",
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w900,
                color: Colors.white,
                height: 1.15,
                fontSize: 42,
              ),
        ),
        const SizedBox(height: 24),
        Text(
          "Ready to evolve your practice? Our team will help you integrate Vaidya AI seamlessly into your current workflow.",
          style: TextStyle(
            color: AppColors.primaryFixed.withValues(alpha: 0.8),
            fontSize: 18,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 40),
        _BulletItem(
          icon: Icons.done_all,
          label: "2-Week White-Glove Onboarding",
        ),
        _BulletItem(
          icon: Icons.security,
          label: "HIPAA-Compliant Data Storage",
        ),
        _BulletItem(
          icon: Icons.support_agent,
          label: "24/7 Botanical Expert Support",
        ),
      ],
    );
  }
}

class _BulletItem extends StatelessWidget {
  final IconData icon;
  final String label;
  const _BulletItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, color: Colors.white, size: 20),
          ),
          const SizedBox(width: 16),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class _CTARight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);

    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Book your Free Demo",
            style: TextStyle(
              fontFamily: 'Manrope',
              fontWeight: FontWeight.w900,
              fontSize: 18,
              color: AppColors.onBackground,
            ),
          ),
          const SizedBox(height: 24),
          // First Name + Last Name on same row
          isMobile
              ? Column(
                  children: [
                    _InputField(label: "First Name", hint: "Sushruta"),
                    const SizedBox(height: 16),
                    _InputField(label: "Last Name", hint: "Samhita"),
                  ],
                )
              : Row(
                  children: [
                    Expanded(
                      child: _InputField(label: "First Name", hint: "Sushruta"),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _InputField(label: "Last Name", hint: "Samhita"),
                    ),
                  ],
                ),
          const SizedBox(height: 16),
          _InputField(label: "Clinical Email", hint: "doctor@vaidya.ai"),
          const SizedBox(height: 16),
          _DropdownField(
            label: "Practice Type",
            options: ["Solo Practitioner", "Ayurvedic Hospital", "Wellness Center"],
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
              minimumSize: const Size(double.infinity, 56),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              shadowColor: AppColors.primary.withValues(alpha: 0.1),
            ),
            child: const Text(
              "Schedule a Consultation",
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Center(
            child: Text(
              "By submitting, you agree to our Privacy Policy regarding clinical data.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: AppColors.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InputField extends StatelessWidget {
  final String label;
  final String hint;
  const _InputField({required this.label, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Manrope',
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: AppColors.onBackground,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.black26, fontSize: 14),
            filled: true,
            fillColor: AppColors.surfaceContainerLowest,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: AppColors.primary.withValues(alpha: 0.2),
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _DropdownField extends StatefulWidget {
  final String label;
  final List<String> options;
  const _DropdownField({required this.label, required this.options});

  @override
  State<_DropdownField> createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<_DropdownField> {
  late String _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.options.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontFamily: 'Manrope',
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: AppColors.onBackground,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: AppColors.surfaceContainerLowest,
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selected,
              isExpanded: true,
              icon: const Icon(Icons.keyboard_arrow_down, color: AppColors.onSurfaceVariant),
              style: const TextStyle(
                color: AppColors.onBackground,
                fontSize: 14,
              ),
              items: widget.options.map((opt) {
                return DropdownMenuItem(
                  value: opt,
                  child: Text(opt),
                );
              }).toList(),
              onChanged: (val) {
                if (val != null) setState(() => _selected = val);
              },
            ),
          ),
        ),
      ],
    );
  }
}
