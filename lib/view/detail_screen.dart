import 'package:demo3/widget/color_item.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../model/shoe_model.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.shoeModel});
  final ShoeModel shoeModel;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.sizeOf(context).height / 2.3,
                    child: SimpleShadow(
                      opacity: 0.8,
                      color: widget.shoeModel.color,
                      offset: const Offset(5, 5),
                      sigma: 9,
                      child: Image.asset(
                        widget.shoeModel.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                    ),
                    child: Positioned(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(61, 158, 158, 158),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(6.0),
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(61, 158, 158, 158),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(6.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Text(
                widget.shoeModel.name,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$ ${widget.shoeModel.price}',
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            (widget.shoeModel.counter < 2)
                                ? widget.shoeModel.counter
                                : setState(() {
                                    widget.shoeModel.counter--;
                                  });
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: textColor,
                          ),
                        ),
                        Text(
                          '${widget.shoeModel.counter}',
                          style: const TextStyle(
                            fontSize: 28,
                            color: textColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              widget.shoeModel.counter++;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            color: textColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Colors',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < widget.shoeModel.moreColor.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(right: 5, top: 10),
                        child: CircleAvatar(
                          backgroundColor: widget.shoeModel.moreColor[i],
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Size',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < widget.shoeModel.size.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(right: 5, top: 10),
                        child: CircleAvatar(
                          child: Text('${widget.shoeModel.size[i]}'),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ReadMoreText(
                widget.shoeModel.description,
                style: const TextStyle(fontSize: 18),
                trimLines: 3,
                colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                lessStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                moreStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(20),
          ),
          alignment: Alignment.center,
          child: const Text(
            'Add to Cart',
            style: TextStyle(
                fontSize: 20, color: textColor, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
