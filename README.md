# zoleta_mobprog facebook clone for Mobile Programming Activity of Kyle Zoleta

## Lab Activity 1A: File Structuring | Design Pattern

This project is a Flutter application designed following modular file structuring and clean component-based design patterns. Below is an overview of the key enhancements integrated into the application:

### Enhancement 1: Dynamic Posts with Values, Dates, and Image Placeholders
Posts are managed dynamically using a structured `PostModel` data class and rendered efficiently via `ListView.builder`. Each post dynamically assigns unique author names, post contents, specific interaction metrics (like counts), timestamps, and conditional media flags (`hasImage`), allowing seamless support for both text-only updates and media-rich posts.

### Enhancement 2: Dynamic AppBar Title
The application's top navigation `AppBar` features a dynamic title that automatically updates based on the currently active tab in the bottom navigation bar. Whether navigating between Home ("Zoleta Social"), Friends, Notifications, or Menu, the header reflects the active context instantly.

### Enhancement 3: Expanded Bottom Navigation Bar Items
The bottom navigation bar was expanded from two to four items (`Home`, `Friends`, `Notifications`, and `Menu`) with fixed type alignment and active/inactive color states. This provides users with core social media navigation flows and links directly to a fully populated notification activity feed.

### Enhancement 4: Custom Social Media Application Name
The application's identity was rebranded to **Zoleta Social** across the application configurations, app title, and main headers, establishing a cohesive branding for this custom mobile programming project.

### Enhancement 5: Custom Color Palette
A vibrant and modern color palette was introduced in [constant.dart](file:///home/moeko/Desktop/MoekoWorks/lab_activity_1a/lib/constant.dart), utilizing deep indigo primary accents (`#6C63FF`), dark navy slate surfaces (`#2A2E43`), soft lavender tints (`#E4E3FF`), and clean off-white backgrounds to deliver a polished visual aesthetic.

### Enhancement 6: Wireframe Image Placeholder & Extended Dataset
To replicate wireframe and production design specifications, a custom `WireframeImagePlaceholder` widget was implemented featuring a bordered box with diagonal cross lines (`X`) whenever a post specifies `Image = Yes` without a custom asset. Furthermore, the app has been populated with 10 detailed newsfeed posts and 20 realistic notifications with graduated timestamps ranging from "Just now" to "2 days ago".
