import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            //Landscape
            FadeInImage(
              fit: BoxFit.fill,
              placeholder: AssetImage('assets/no-image.jpg'),
              placeholderFit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.pexels.com/photos/235621/pexels-photo-235621.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
              height: 250,
              width: double.infinity,
            ),
            //Title and star
            TitleAndRating(),
            Contact(),
            JustifiedText(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ante ex, sollicitudin in auctor quis, tristique eget eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas ultrices vitae lacus ut tincidunt. Fusce posuere pellentesque egestas. "),
            JustifiedText(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ante ex, sollicitudin in auctor quis, tristique eget eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas ultrices vitae lacus ut tincidunt. Fusce posuere pellentesque egestas. "),
            JustifiedText(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ante ex, sollicitudin in auctor quis, tristique eget eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas ultrices vitae lacus ut tincidunt. Fusce posuere pellentesque egestas. "),
            JustifiedText(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ante ex, sollicitudin in auctor quis, tristique eget eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas ultrices vitae lacus ut tincidunt. Fusce posuere pellentesque egestas. "),
            JustifiedText(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ante ex, sollicitudin in auctor quis, tristique eget eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas ultrices vitae lacus ut tincidunt. Fusce posuere pellentesque egestas. "),
            JustifiedText(
                text:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ante ex, sollicitudin in auctor quis, tristique eget eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas ultrices vitae lacus ut tincidunt. Fusce posuere pellentesque egestas. ")
          ],
        ),
      ),
    );
  }
}

class TitleAndRating extends StatelessWidget {
  const TitleAndRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Text Title",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text("Text SubTitle", style: TextStyle(color: Colors.white38)),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.deepOrange,
          ),
          const Text("41")
        ],
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconWithTitle(Icons.call, "Call", () {}),
        IconWithTitle(Icons.navigation, "Route", () {}),
        IconWithTitle(Icons.share, "Share", () {}),
      ],
    );
  }
}

class IconWithTitle extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  // ignore: use_key_in_widget_constructors
  const IconWithTitle(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () => onTap(),
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Icon(icon, color: Colors.blue),
            Text(
              text.toUpperCase(),
              style: const TextStyle(color: Colors.blue),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ],
        ),
      ),
    );
  }
}

class JustifiedText extends StatelessWidget {
  final String text;

  const JustifiedText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Text(
        text,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
