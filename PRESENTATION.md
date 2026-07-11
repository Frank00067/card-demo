# Presentation Script (3-minute outline)

---

## 1. Intro (15s)
"Hi — I'll be demonstrating Flutter's `Card` widget.
A Card is a Material Design surface that groups related content together.
You see it in almost every app — Amazon product listings, Spotify tracks, news feeds."

---

## 2. Run the Demo (30s)
- Launch the app.
- Point to the product card on screen — "This is a real-world product card, like you'd see in a shopping app."
- Show that it has an icon, title, price, and star rating inside it.

---

## 3. Code Walkthrough (60–75s)
Open `lib/main.dart` and point to the Card widget block:

```dart
Card(
  elevation: _elevation,   // Property 1
  color: _color,           // Property 2
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(_borderRadius), // Property 3
  ),
  child: Padding(...),
)
```

- "The Card takes three key properties I'll demo: elevation, color, and shape."
- "The child is just a Row with an icon and some Text — the Card itself is the wrapper."

---

## 4. Three Properties (60–75s)

### Property 1 — `elevation`
- Default is 1.0 (slight shadow).
- Drag the slider from 0 → 20.
- "At 0 it looks completely flat — no shadow. At 20 it looks like it's floating above the screen."
- "You'd lower it for subtle cards in a list, raise it for a highlighted or selected card."

### Property 2 — `color`
- Default is the theme's surface color (white).
- Switch dropdown: White → Light Blue → Light Purple → Light Green.
- "You'd use this to color-code categories — green for in-stock, red for out-of-stock, or just match your brand."

### Property 3 — `shape`
- Default is a slight 4px rounded corner.
- Drag the radius slider from 0 → 40.
- "At 0 you get sharp corners — more formal. At 40 it's very rounded — more modern and friendly."
- "Most apps today use 8–16px radius for a clean look."

---

## 5. Wrap Up (15s)
"So that's Flutter's Card widget — elevation for shadow depth, color for the background, and shape for corner style.
Any quick questions?"

---

## Reminders
- Add your presentation date in the Canvas comment section.
- Push with meaningful commits before 5:00 PM on presentation day.
- Embed a screenshot in README.md before submitting.
