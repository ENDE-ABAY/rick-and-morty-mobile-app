import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/app/model/character.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.id, required this.character});

  final String id;
  final Character character;

  @override
  Widget build(BuildContext context) {
    // Print statement outside the widget tree
    print('Episode: ${character.episode}');

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: character.image,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              Text(
                'Name: ${character.name}',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                'Status: ${character.status}',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                'Species: ${character.species}',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                'Gender: ${character.gender}',
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              if (character.type.isNotEmpty) ...[
                const SizedBox(height: 10),
                Text(
                  'Type: ${character.type}',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ],
              if (character.location.isNotEmpty) ...[
                const SizedBox(height: 10),
                Text(
                  'Location: ${character.location}',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ],
              if (character.episode.isNotEmpty) ...[
                const SizedBox(height: 10),
                Text(
                  'Episode: ${character.episode}',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
