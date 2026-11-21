# zoleta_mobprog facebook clone for Mobile Programming Activity of Kyle Zoleta

## Lab Activity 1A: File Structuring | Design Pattern

This project is a Flutter application designed following modular file structuring and clean component-based design patterns. Below is an overview of the key enhancements integrated into the application:

### Enhancement 1: Image Area Widget Integration
The image display area within the newsfeed cards has been structured using a dedicated conditional widget block leveraging `ClipRRect` and `Image.asset()`. This isolates local image rendering, ensures consistent border radius clipping and layout scaling across posts, and provides a fallback placeholder container when no media is present.

### Enhancement 2: Dynamic User Profile Avatar Integration
User profile pictures are rendered dynamically through an upgraded `CircleAvatar` widget that accepts an optional `profileImagePath`. By evaluating whether a custom asset path is provided, the avatar seamlessly switches between displaying custom profile images (such as character avatars) and falling back to a default user icon, promoting high reusability across different author profiles.

### Enhancement 3: Widget-Based Action Buttons
The post interaction controls (Like count, Comment, and Share) were refactored from inline layout code into a dedicated, reusable stateless widget class named `NewsfeedActionButton`. This component-based design pattern encapsulates icon rendering, label formatting, and styling into a single modular unit, enhancing code readability, maintainability, and architectural cleanliness.
