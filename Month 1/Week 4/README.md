# Hello Flutter

## Overview
This is my first Flutter app. It displays a welcome message
and a short description at the center of the screen.

## Widget Tree (File Hierarchy Format)
lib/
└── main.dart
    └── MyApp (StatelessWidget)
        └── MaterialApp
            └── HomePage (StatelessWidget)
                └── Scaffold
                    ├── AppBar
                    │   └── Text('Welcome to Flutter')
                    └── Body
                        └── Center
                            └── Text('This is my first Flutter app')
                                ├── fontSize: 24
                                └── color: Colors.green

