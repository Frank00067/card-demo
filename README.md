# Card Widget Demo

A Flutter demo app showcasing the `Card` widget — a Material Design surface used to group related content with elevation, color, and shape.

---

## Run Instructions

1. Make sure Flutter is installed and on your PATH.
2. Clone or download this repo, then from the project root run:

```bash
flutter pub get
flutter run
```

---

## Three Attributes Demonstrated

| # | Property | What it does | Default |
|---|----------|-------------|---------|
| 1 | `elevation` | Controls the shadow depth beneath the card. Higher value = more shadow = card appears to "float" more. | `1.0` |
| 2 | `color` | Sets the background color of the card surface. Useful for theming, status indicators, or category coding. | Theme's `surface` color (usually white) |
| 3 | `shape` | Defines the card's border shape. Using `RoundedRectangleBorder` lets you control corner radius from sharp (0) to pill-like (40+). | `RoundedRectangleBorder` with 4px radius |

---

## Screenshot

> _(Add screenshot here before submitting — save as `screenshot.png` in the project root and embed below)_

![App Screenshot](screenshot.png)

---

## Real-World Use Case

Cards are used in virtually every app — product listings (Amazon), music tracks (Spotify), news articles, profile summaries. This demo shows a product card for a pair of wireless headphones.
