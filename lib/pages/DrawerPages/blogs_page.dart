import 'package:flutter/material.dart';
import 'package:lets_love_right/components/blog_post.dart';

class BlogsPage extends StatelessWidget {
  const BlogsPage({Key? key}) : super(key: key);

  final String _blogText = "Sample text goes here. "
      "Lorem ipsum dolor,sit amet. "
      "Lorem ipsum dolor, sit amet";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Blogs")),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (e, index) {
            return Container(
              height: 300,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BlogPosts(
                            headerImage: "assets/images/couple_$index.png",
                            heading: "Sample Heading Goes Here",
                            text: _blogText,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("assets/images/couple_$index.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Sample Heading Goes Here",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(_blogText),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
