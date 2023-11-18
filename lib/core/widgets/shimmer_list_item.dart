import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/useful_methods.dart';
import 'package:bookly_app/core/widgets/shimmer_widget.dart';

class ShimmerListItem extends StatelessWidget {
  const ShimmerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: ShimmerWidget(
              height: 110,
              width: getWidth(context) * 0.2,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                  ),
                  child: ShimmerWidget(
                    height: 16,
                    width: getHeight(context) * 0.3,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                  ),
                  child: ShimmerWidget(
                    height: 16,
                    width: getHeight(context) * 0.3,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                  ),
                  child: ShimmerWidget(
                    height: 8,
                    width: getWidth(context) * .3,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    ShimmerWidget(
                      height: 8,
                      width: getWidth(context) * 0.1,
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 30,
                      ),
                      child: ShimmerWidget(
                        height: 8,
                        width: getWidth(context) * .3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
