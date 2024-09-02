import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  final onItemTapped;
  final int selectedIndex;
  const OrderButton(
      {super.key, required this.onItemTapped, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: ElevatedButton(
            onPressed: () {
              onItemTapped(0);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: selectedIndex == 0 ? Colors.white : Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
            ),
            child: Text('Latest',
                style: TextStyle(
                    fontSize: 12,
                    color: selectedIndex == 0 ? Colors.black : Colors.white)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: ElevatedButton(
            onPressed: () {
              onItemTapped(1);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: selectedIndex == 1 ? Colors.white : Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
            ),
            child: Text('Popular',
                style: TextStyle(
                    color: selectedIndex == 1 ? Colors.black : Colors.white)),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            onItemTapped(2);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: selectedIndex == 2 ? Colors.white : Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          child: Text('Oldest',
              style: TextStyle(
                  color: selectedIndex == 2 ? Colors.black : Colors.white)),
        ),
      ],
    );
  }
}
