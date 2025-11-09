# Visual Features & UI Components

## 🎨 Design System

### Color Palette
- **Primary Blue:** `Colors.blue[700]` - AppBar, buttons
- **Success Green:** `Colors.green[700]` - Prices, in-stock indicators
- **Warning Red:** `Colors.red[800]` - Out of stock
- **Star Amber:** `Colors.amber[700]` - Rating icons
- **Background:** White with grey footer
- **Cards:** White with elevation 4

### Typography
- **Product Name:** 16px bold (card), 24px bold (detail)
- **Price:** 14px (card), 24px bold (detail)
- **Body Text:** 16px regular
- **Footer:** 14px bold, 12px regular

### Spacing
- **Grid Spacing:** 12px between cards
- **Padding:** 16px standard, 8px compact
- **Card Margins:** 8px all sides
- **Border Radius:** 12px for modern look

## 📱 HomePage Components

### Product Card (GridView Item)
```
┌────────────────────────┐
│   [Product Image]      │ 120px height, Hero tagged
│                        │
├────────────────────────┤
│ Product Name           │ Bold, 2 lines max
│ Rp 15.000             │ Green, formatted
│ ⭐ 4.8    Stock: 50   │ Rating + Stock indicator
└────────────────────────┘
```

**Features:**
- Hero tag: `'product-${item.name}'`
- Image error handling with placeholder
- Ripple effect on tap (InkWell)
- Elevation 4 for depth
- Rounded corners (12px)

### Footer Component
```
─────────────────────────
Dandi Azrul Syahputra
NIM: 2341720118
─────────────────────────
```

**Styling:**
- Grey background (`Colors.grey[200]`)
- Border top 1px
- Centered text
- Padding 16px all sides

## 📄 ItemPage Components

### Hero Image
```
┌──────────────────────────────┐
│                              │
│      [Large Product]         │ 300px height
│      [Image with Hero]       │ Full width
│                              │
└──────────────────────────────┘
```

### Product Info Section
```
Product Name (Large & Bold)

⭐ 4.8    [In Stock: 50]
         └─ Badge style

┌────────────────────────────┐
│ Price        Rp 15.000     │ Highlighted container
└────────────────────────────┘

Description
Lorem ipsum dolor sit amet...

[    Add to Cart    ]  Full-width button
```

### Interactive Elements

#### Add to Cart Button
- **Enabled State:**
  - Blue background
  - White text & icon
  - Elevation 2
  - Shows snackbar on press
  
- **Disabled State:**
  - Grey background
  - Can't be pressed
  - Shown when stock = 0

#### Snackbar
```
┌─────────────────────────────┐
│ ✓ Product added to cart!    │
└─────────────────────────────┘
```
- Green background
- Floating style
- Auto-dismiss after 2 seconds

## 🎭 Animations & Transitions

### Hero Animation
**From:** Small thumbnail (120px) in GridView  
**To:** Large image (300px) in detail page  
**Duration:** ~300ms smooth transition  
**Tag:** `'product-${item.name}'`

**Implementation:**
```dart
// In ProductCard (GridView)
Hero(
  tag: 'product-${item.name}',
  child: Image.network(...),
)

// In ItemPage (Detail)
Hero(
  tag: 'product-${item.name}',  // Same tag!
  child: Image.network(...),
)
```

### Route Transition
- Default go_router transition
- Smooth fade + slide animation
- Back button with reverse animation

### Tap Feedback
- **InkWell** ripple effect on cards
- Material design splash color
- Border radius respects card shape

## 📊 Data Formatting

### Price Formatting
```dart
'Rp ${item.price.toString().replaceAllMapped(
  RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
  (Match m) => '${m[1]}.'
)}'
```
**Output:** 
- 15000 → Rp 15.000
- 5000 → Rp 5.000
- 125000 → Rp 125.000

### Stock Indicator
```dart
Text(
  item.stock > 0 ? 'In Stock: ${item.stock}' : 'Out of Stock',
  style: TextStyle(
    color: item.stock > 0 ? Colors.green[800] : Colors.red[800],
  ),
)
```

### Rating Display
```
⭐ 4.8
```
- Icon: `Icons.star` size 16-24px
- Color: Amber
- Value: 1 decimal place

## 🖼️ Image Handling

### Network Images
- Source: Unsplash (public domain)
- Fallback UI if image fails:
```
┌────────────────┐
│                │
│   🖼️ Icon     │  Grey background
│                │
└────────────────┘
```

### Sample Image URLs
```dart
'https://images.unsplash.com/photo-1559056199-641a0ac8b55e?w=400'
'https://images.unsplash.com/photo-1608198093002-ad4e005484ec?w=400'
...
```

## 🔧 Responsive Behavior

### GridView Responsiveness
```dart
SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,        // 2 columns
  childAspectRatio: 0.75,   // Width:Height ratio
  crossAxisSpacing: 12,     // Horizontal spacing
  mainAxisSpacing: 12,      // Vertical spacing
)
```

### ScrollView
- Both pages use scroll containers
- Prevents overflow on small screens
- Natural scrolling behavior

## 🎯 UX Enhancements

### Visual Feedback
1. **Tap**: InkWell ripple effect
2. **Success**: Green snackbar
3. **Error**: Red indicators
4. **Loading**: Image placeholder

### Clear Hierarchy
1. Hero image draws attention
2. Product name prominent
3. Price highlighted in colored container
4. Secondary info (rating, stock) grouped

### Accessibility
- Sufficient contrast ratios
- Clear text sizes
- Touch targets ≥ 48px
- Alt behavior for failed images

---

**Design Philosophy:**
Modern, clean, marketplace-inspired UI with smooth animations and clear information hierarchy.
