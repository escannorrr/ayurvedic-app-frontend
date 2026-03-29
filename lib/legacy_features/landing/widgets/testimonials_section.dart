import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/screen_size.dart';

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);
    
    return Container(
      width: double.infinity,
      color: AppColors.surfaceContainerLow,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 64,
        vertical: 120,
      ),
      child: _TestimonialsContent(),
    );
  }
}

class _TestimonialsContent extends StatefulWidget {
  @override
  State<_TestimonialsContent> createState() => _TestimonialsContentState();
}

class _TestimonialsContentState extends State<_TestimonialsContent> {
  final PageController _controller = PageController(viewportFraction: 0.9);

  static const List<Map<String, String>> _testimonials = [
    {
      "text": "The Prakriti mapping in Vaidya AI is revolutionary. It reduced my consultation time by 40% while increasing accuracy.",
      "author": "Dr. Ananya Sharma",
      "role": "Chief Ayurvedic Officer, Birla Wellness",
    },
    {
      "text": "Finally, a digital tool that respects Ayurvedic tradition while providing modern clinical support. A must-have for clinics.",
      "author": "Dr. Rajesh Mehta",
      "role": "Medical Director, Ayush Clinics",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Trusted by Practitioners",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontFamily: 'Manrope',
                          fontWeight: FontWeight.w900,
                          color: AppColors.onBackground,
                          letterSpacing: -1,
                        ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Hear from practitioners who have transformed their traditional clinics with digital intelligence.",
                    style: TextStyle(color: AppColors.onSurfaceVariant, fontSize: 16),
                  ),
                ],
              ),
            ),
            if (!isMobile)
              Row(
                children: [
                  _ArrowButton(
                    icon: Icons.arrow_back,
                    onPressed: () => _controller.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    ),
                  ),
                  const SizedBox(width: 16),
                  _ArrowButton(
                    icon: Icons.arrow_forward,
                    onPressed: () => _controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    ),
                  ),
                ],
              ),
          ],
        ),
        const SizedBox(height: 64),
        if (!isMobile)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _testimonials.map((t) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: _TestimonialCard(
                text: t["text"]!,
                author: t["author"]!,
                role: t["role"]!,
              ),
            )).toList(),
          )
        else
          SizedBox(
            height: 400,
            child: PageView.builder(
              controller: _controller,
              itemCount: _testimonials.length,
              itemBuilder: (context, index) {
                final t = _testimonials[index];
                return _TestimonialCard(
                  text: t["text"]!,
                  author: t["author"]!,
                  role: t["role"]!,
                );
              },
            ),
          ),
      ],
    );
  }
}

class _TestimonialCard extends StatelessWidget {
  final String text;
  final String author;
  final String role;

  const _TestimonialCard({
    required this.text,
    required this.author,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    final bool isMobile = ScreenSize.isMobile(context);
    
    return Container(
      width: isMobile ? double.infinity : 440,
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: AppColors.onSurface.withValues(alpha: 0.05),
            blurRadius: 40,
            offset: const Offset(0, 10),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: List.generate(5, (index) => const Icon(Icons.star, color: Color(0xFFD4AF37), size: 18)),
          ),
          const SizedBox(height: 24),
          Text(
            "\"$text\"",
            style: const TextStyle(
              color: AppColors.onBackground,
              fontSize: 18,
              height: 1.5,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 48),
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: AppColors.primaryContainer,
                child: Text(
                  author.substring(4, 6),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      author,
                      style: const TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                        color: AppColors.primary,
                      ),
                    ),
                    Text(
                      role.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        color: AppColors.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ArrowButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _ArrowButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.onSurface.withValues(alpha: 0.1)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
          )
        ],
      ),
      child: IconButton(
        icon: Icon(icon, color: AppColors.primary, size: 20),
        onPressed: onPressed,
      ),
    );
  }
}
