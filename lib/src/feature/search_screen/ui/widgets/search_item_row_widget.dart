import 'package:flutter/material.dart';
import 'package:kinopoisk_test/src/feature/search_screen/model/film.dart';
import 'package:transparent_image/transparent_image.dart';

class SearchItemRowWidget extends StatelessWidget {
  const SearchItemRowWidget({
    required this.mediaItem,
    super.key,
  });
  final MediaItem mediaItem;
  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: AspectRatio(
                    aspectRatio: 3 / 4,
                    child: FadeInImage.memoryNetwork(
                      image: mediaItem.poster?.previewUrl ?? '',
                      placeholder: kTransparentImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mediaItem.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Рейтинг: ${mediaItem.rating?.kp}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    ///add description
                    Text(
                      mediaItem.description,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
}
