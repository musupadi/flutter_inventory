import 'package:flutter/material.dart';
import 'package:myapp/API/server.dart';
import 'package:myapp/Color/colors.dart';

class ItemRequestAdapter extends StatefulWidget {
  const ItemRequestAdapter({super.key});

  @override
  State<ItemRequestAdapter> createState() => _ItemRequestAdapterState();
}

class _ItemRequestAdapterState extends State<ItemRequestAdapter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: PrimaryColors()
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage("https://inventory.podomorouniversity.ac.id/img/item/default.jpg"),
                fit: BoxFit.cover, // Ensures the image covers the container
                onError: (error, stackTrace) {
                  print("Failed to load image: $error"); // Print error to console
                },
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/placeholder.jpg', // Path to your placeholder image
                image: "https://inventory.podomorouniversity.ac.id/img/item/default.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text("Tesst"),
          Text("Tesst"),
          Text("Tesst")
        ],
      ),
    );
  }
}