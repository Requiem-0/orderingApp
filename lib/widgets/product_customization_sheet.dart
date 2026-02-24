import 'package:flutter/material.dart';
import '../models/brand.dart';

class ProductCustomizationSheet extends StatefulWidget {
  final Product product;
  final Function(int quantity) onConfirm;

  const ProductCustomizationSheet({
    super.key,
    required this.product,
    required this.onConfirm,
  });

  @override 
  State<ProductCustomizationSheet> createState() => _ProductCustomizationSheetState();
}

class _ProductCustomizationSheetState extends State<ProductCustomizationSheet> {
  Map<String, OptionItem?> selections = {};
  int quantity = 1;

  @override
  void initState() {
    super.initState();
    
    for (int i = 0; i < widget.product.optionGroups.length; i++) {
      var group = widget.product.optionGroups[i];
      if (group.isRequired && group.options.isNotEmpty) {
        selections[group.title] = group.options[0];
      }
    }
  }

  double calculateTotal() {
    double base = double.tryParse(widget.product.price.replaceAll('\$', '')) ?? 0.0;
    
    double extras = 0.0;
    selections.forEach((key, item) {
      if (item != null) {
        String priceString = item.price.replaceAll('\$', '').replaceAll('+', '').replaceAll('-', '').trim();
        
        if (priceString.toLowerCase() != "free") {
          double p = double.tryParse(priceString) ?? 0.0;
          extras = extras + p;
        }
      }
    });

    return (base + extras) * quantity;
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 1,
      minChildSize: 0.5,
      maxChildSize: 1,
      builder: (_, controller) => Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF8F8F8),
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: controller,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Hero(
                        tag: widget.product.name,
                        child: ClipRRect(
                          child: Image.network(
                            widget.product.imageUrl,
                            height: 380,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 15, right: 15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.4),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.4),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.share_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.4),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(widget.product.name, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                            Text(widget.product.price, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFFEC4A14))),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          widget.product.description,
                          style: TextStyle(color: Colors.grey.shade600, fontSize: 14, height: 1.5),
                        ),
                      ],
                    ),
                  ),

                  for (var group in widget.product.optionGroups) ...[
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Text(group.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          const Spacer(),
                          if (group.isRequired)
                            Text("REQUIRED", style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.red.shade400, letterSpacing: 0.5))
                          else
                            Text("Optional", style: TextStyle(fontSize: 12, color: Colors.grey.shade500)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    
                    for (var option in group.options) ...[
                      (() {
                        bool selected;
                        if (group.isRequired) {
                          selected = selections[group.title] == option;
                        } else {
                          selected = selections[option.name] == option;
                        }

                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            bottom: 12,
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (group.isRequired) {
                                  selections[group.title] = option;
                                } else {
                                  if (selections[option.name] == option) {
                                    selections.remove(option.name);
                                  } else {
                                    selections[option.name] = option;
                                  }
                                }
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: selected
                                      ? const Color(0xFFEC4A14)
                                      : Colors.grey.shade200,
                                  width: 1.5,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 22,
                                    height: 22,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: selected
                                            ? const Color(0xFFEC4A14)
                                            : Colors.grey.shade300,
                                        width: 1.5,
                                      ),
                                    ),
                                    padding: const EdgeInsets.all(3),
                                    child: selected
                                        ? Container(
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFEC4A14),
                                              shape: BoxShape.circle,
                                            ),
                                          )
                                        : null,
                                  ),
                                  const SizedBox(width: 15),
                                  Text(
                                    option.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    option.price,
                                    style: TextStyle(
                                      color: selected
                                          ? const Color(0xFFEC4A14)
                                          : Colors.grey.shade500,
                                      fontWeight: selected
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      })(),
                    ],
                  ],

                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade200),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "E.g. No onions, sauce on the side...",
                          hintStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
                          border: InputBorder.none,
                        ),
                        maxLines: 2,
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 180),
                ],
              ),
            ),

            Positioned(
              bottom: 0, left: 0, right: 0,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, -5))],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(color: const Color(0xFFF1F4F7), borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            children: [
                               IconButton(
                                 onPressed: () {
                                   if (quantity > 1) setState(() => quantity--);
                                 },
                                 icon: Icon(
                                   Icons.remove,
                                   size: 22,
                                   color: Colors.grey.shade500,
                                 ),
                                 constraints: const BoxConstraints(),
                                 padding: const EdgeInsets.all(8),
                               ),
                               const SizedBox(width: 8),
                               Text(
                                 "$quantity",
                                 style: const TextStyle(
                                   fontSize: 18,
                                   fontWeight: FontWeight.bold,
                                 ),
                               ),
                               const SizedBox(width: 8),
                               IconButton(
                                 onPressed: () => setState(() => quantity++),
                                 icon: const Icon(
                                   Icons.add,
                                   size: 22,
                                   color: Color(0xFFEC4A14),
                                 ),
                                 constraints: const BoxConstraints(),
                                 padding: const EdgeInsets.all(8),
                               ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("TOTAL", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey.shade500)),
                            Text("\$${calculateTotal().toStringAsFixed(2)}", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => widget.onConfirm(quantity),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFEC4A14),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                          elevation: 0,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Add to Order", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            SizedBox(width: 10),
                            Icon(Icons.shopping_basket_outlined, size: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  }

