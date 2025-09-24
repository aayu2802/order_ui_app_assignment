# orders_ui_app

A new Flutter project.

## Features

Responsive Design: Layout adapts seamlessly to different screen sizes.

Header with Actions: Displays the screen title and a download button.

Filter Bar: Supports filtering of orders based on various parameters.

Orders Table: Displays orders in a structured table format.

Pagination: Navigate through multiple pages of orders using square buttons.

Horizontal Scroll Support: The table can scroll horizontally on smaller screens.

## Project Structure
lib/
├── main.dart                 
├── models/
│   └── order_model.dart     
├── screens/
│   └── orders_screen.dart    
├── widgets/
│   ├── filter_bar.dart       
│   ├── market_nav_bar.dart   
│   └── order_table.dart   
│   └── page_bar.dart
│   └── order_card.dart   

## Approach

### Separation of Concerns
Each component is broken into its own widget  like FilterBar, MarketNavBar, OrderTable, PageBar and OrderCard ,which makes these widgets reuseable and responsive for other screens
### Responsive Layout

Used LayoutBuilder() to adapt layout based on other screens width
buttons are wrapped in a Wrap widget to automatically move to the next line if space is limited.
Header and buttons stack vertically on smaller screens

## Screenshots

![img alt](https://github.com/aayu2802/order_ui_app_assignment/blob/39961343b196dca920505716bdbc3233ba408702/Screenshot%202025-09-24%20182539.png)


