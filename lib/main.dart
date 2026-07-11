import 'package:flutter/material.dart';

void main() {
  runApp(const CardDemoApp());
}

class CardDemoApp extends StatelessWidget {
  const CardDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const Scaffold(
        appBar: AppBar(title: Text('Card Widget Demo')),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: CardDemo(),
        ),
      ),
    );
  }
}

class CardDemo extends StatefulWidget {
  const CardDemo({super.key});

  @override
  State<CardDemo> createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  // Property 1: elevation — controls shadow depth
  double _elevation = 4;

  // Property 2: color — background color of the card
  Color _color = Colors.white;

  // Property 3: shape — controls corner radius
  double _borderRadius = 4;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Product Card (updates live):',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        // ── The Card being demonstrated ──────────────────────────────
        Card(
          // Property 1: elevation
          elevation: _elevation,
          // Property 2: color
          color: _color,
          // Property 3: shape
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_borderRadius),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Icon(Icons.headphones, size: 48, color: Colors.indigo),
                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Wireless Headphones',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text('High-quality sound · \$49.99'),
                    SizedBox(height: 4),
                    Text('⭐⭐⭐⭐⭐  (128 reviews)'),
                  ],
                ),
              ],
            ),
          ),
        ),
        // ────────────────────────────────────────────────────────────

        const SizedBox(height: 24),
        const Text(
          'Controls — change these to demonstrate properties:',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        // Control 1: elevation slider
        Row(
          children: [
            const SizedBox(width: 110, child: Text('1. elevation:')),
            Expanded(
              child: Slider(
                value: _elevation,
                min: 0,
                max: 20,
                divisions: 20,
                label: _elevation.round().toString(),
                onChanged: (v) => setState(() => _elevation = v),
              ),
            ),
            Text(_elevation.round().toString()),
          ],
        ),

        // Control 2: color picker
        Row(
          children: [
            const SizedBox(width: 110, child: Text('2. color:')),
            const SizedBox(width: 8),
            DropdownButton<Color>(
              value: _color,
              items: const [
                DropdownMenuItem(value: Colors.white, child: Text('White')),
                DropdownMenuItem(
                    value: Color(0xFFE3F2FD), child: Text('Light Blue')),
                DropdownMenuItem(
                    value: Color(0xFFF3E5F5), child: Text('Light Purple')),
                DropdownMenuItem(
                    value: Color(0xFFE8F5E9), child: Text('Light Green')),
              ],
              onChanged: (c) => setState(() => _color = c ?? Colors.white),
            ),
          ],
        ),

        // Control 3: border radius slider
        Row(
          children: [
            const SizedBox(width: 110, child: Text('3. shape radius:')),
            Expanded(
              child: Slider(
                value: _borderRadius,
                min: 0,
                max: 40,
                divisions: 8,
                label: _borderRadius.round().toString(),
                onChanged: (v) => setState(() => _borderRadius = v),
              ),
            ),
            Text(_borderRadius.round().toString()),
          ],
        ),

        const SizedBox(height: 16),
        const Divider(),
        const Text('Property summary:',
            style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        const Text('• elevation  — shadow depth (0 = flat, 20 = floating)'),
        const Text('• color      — card background color'),
        const Text('• shape      — corner roundness via RoundedRectangleBorder'),
      ],
    );
  }
}
