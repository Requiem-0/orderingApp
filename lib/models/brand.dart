class OptionItem {
  final String name;
  final String price;
  OptionItem({required this.name, required this.price});
}

class OptionGroup {
  final String title;
  final bool isRequired;
  final List<OptionItem> options;
  OptionGroup({required this.title, required this.options, this.isRequired = false});
}

class Product {
  final String name;
  final String price;
  final String imageUrl;
  final String description;
  final String? tag;
  final List<OptionGroup> optionGroups;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    this.description = "",
    this.tag,
    this.optionGroups = const [],
  });
}

class Brand {
  final String name;
  final String location;
  final String phone;
  final String status;
  final String imageUrl;
  final String logoUrl;
  final double rating;
  final String cuisineType;
  final String priceGrade;
  final bool isTopRated;
  final List<Product> products;

  Brand({
    required this.name,
    required this.location,
    required this.phone,
    required this.status,
    required this.imageUrl,
    required this.logoUrl,
    required this.rating,
    required this.cuisineType,
    required this.priceGrade,
    this.isTopRated = false,
    required this.products,
  });

  static List<Brand> sampleBrands = [
    Brand(
      name: "Rebuzz Rooftop",
      location: "Chipledhunga, Pokhara",
      phone: "+977 9801234567",
      status: "OPEN",
      imageUrl: "https://images.pexels.com/photos/1267320/pexels-photo-1267320.jpeg",
      logoUrl: "https://images.unsplash.com/photo-1555396273-367ea4eb4db5?q=80&w=1974&auto=format&fit=crop",
      rating: 4.8,
      cuisineType: "Italian",
      priceGrade: "\$\$",
      isTopRated: true,
      products: [
        Product(
          name: "Truffle Burger",
          price: "\$24.00",
          imageUrl: "https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg",
          description: "Wagyu beef with black truffle aioli and gruyère cheese.",
          tag: "CHEF'S SPECIAL",
          optionGroups: [
            OptionGroup(
              title: "Choose your side",
              isRequired: true,
              options: [
                OptionItem(name: "French Fries", price: "Free"),
                OptionItem(name: "Garden Salad", price: "+\$2.00"),
                OptionItem(name: "Grilled Asparagus", price: "+\$4.00"),
              ],
            ),
            OptionGroup(
              title: "Add-ons",
              options: [
                OptionItem(name: "Extra Cheese", price: "+\$1.50"),
                OptionItem(name: "Crispy Bacon", price: "+\$3.00"),
              ],
            ),
          ],
        ),
        Product(
          name: "Pan-Seared Scallops",
          price: "\$34.00",
          imageUrl: "https://images.pexels.com/photos/5695932/pexels-photo-5695932.jpeg",
          description: "Jumbo scallops with cauliflower purée and crispy pancetta.",
          tag: "POPULAR",
        ),
        Product(
          name: "Lobster Bisque",
          price: "\$18.00",
          imageUrl: "https://images.pexels.com/photos/539451/pexels-photo-539451.jpeg",
          description: "Fresh Atlantic lobster, cream, and a touch of sherry.",
        ),
        Product(
          name: "Filet Mignon",
          price: "\$45.00",
          imageUrl: "https://images.pexels.com/photos/675951/pexels-photo-675951.jpeg",
          description: "8oz center-cut filet, roasted garlic butter, and red wine reduction.",
        ),
      ],
    ),
    Brand(
      name: "FTwo F",
      location: "Pokhara Trade Mall",
      phone: "+977 9812345678",
      status: "BUSY",
      imageUrl: "https://images.pexels.com/photos/1581384/pexels-photo-1581384.jpeg",
      logoUrl: "https://images.unsplash.com/photo-1555396273-367ea4eb4db5?q=80&w=1974&auto=format&fit=crop",
      rating: 4.5,
      cuisineType: "Continental",
      priceGrade: "\$\$\$",
      products: [
        Product(
          name: "Grilled Salmon",
          price: "\$26.00",
          imageUrl: "https://images.pexels.com/photos/262959/pexels-photo-262959.jpeg",
          description: "Fresh Atlantic salmon grilled with lemon-herb butter.",
          tag: "HEALTHY",
        ),
        Product(
          name: "Chicken Pasta",
          price: "\$18.00",
          imageUrl: "https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg",
          description: "Creamy fettuccine with roasted chicken and sun-dried tomatoes.",
        ),
        Product(
          name: "Caesar Salad",
          price: "\$12.00",
          imageUrl: "https://images.pexels.com/photos/2097090/pexels-photo-2097090.jpeg",
          description: "Crispy romaine, parmesan, sourdough croutons, and house-made dressing.",
        ),
        Product(
          name: "Mushroom Risotto",
          price: "\$22.00",
          imageUrl: "https://images.pexels.com/photos/2092916/pexels-photo-2092916.jpeg",
          description: "Arborio rice, wild mushrooms, truffle oil, and fresh parsley.",
        ),
      ],
    ),
    Brand(
      name: "Foxys Corner",
      location: "Lakeside, Gairi Chautara",
      phone: "+977 9846123453",
      status: "OPEN",
      imageUrl: "https://images.pexels.com/photos/2092906/pexels-photo-2092906.jpeg",
      logoUrl: "https://images.pexels.com/photos/2092916/pexels-photo-2092916.jpeg",
      rating: 4.2,
      cuisineType: "Asian Fusion",
      priceGrade: "\$",
      isTopRated: true,
      products: [
        Product(
          name: "Dim Sum Set",
          price: "\$12.00",
          imageUrl: "https://images.pexels.com/photos/2313686/pexels-photo-2313686.jpeg",
          description: "A selection of 6 handcrafted dumplings.",
          tag: "BEST SELLER",
        ),
        Product(
          name: "Thai Green Curry",
          price: "\$15.00",
          imageUrl: "https://images.pexels.com/photos/674483/pexels-photo-674483.jpeg",
          description: "Authentic spicy green curry with coconut milk.",
        ),
        Product(
          name: "Miso Ramen",
          price: "\$14.00",
          imageUrl: "https://images.pexels.com/photos/884600/pexels-photo-884600.jpeg",
          description: "Rich miso broth, chashu pork, soy-marinated egg, and scallions.",
        ),
        Product(
          name: "Beef Teriyaki",
          price: "\$20.00",
          imageUrl: "https://images.pexels.com/photos/6294348/pexels-photo-6294348.jpeg",
          description: "Grilled beef striploin with house-made teriyaki sauce and steamed rice.",
        ),
      ],
    ),
    Brand(
      name: "Arcade Hub",
      location: "New Road",
      phone: "+977 9811122222",
      status: "CLOSED",
      imageUrl: "https://images.pexels.com/photos/1015568/pexels-photo-1015568.jpeg",
      logoUrl: "https://images.pexels.com/photos/2097090/pexels-photo-2097090.jpeg",
      rating: 4.7,
      cuisineType: "Global",
      priceGrade: "\$\$",
      products: [
        Product(
          name: "Artisan Pizza",
          price: "\$16.00",
          imageUrl: "https://images.pexels.com/photos/825661/pexels-photo-825661.jpeg",
          description: "Stone-baked pizza with fresh mozzarella and basil.",
        ),
        Product(
          name: "Classic Burger",
          price: "\$14.00",
          imageUrl: "https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg",
          description: "Juicy beef patty, cheddar, lettuce, tomato, and onion.",
        ),
        Product(
          name: "Chicken Wings",
          price: "\$12.00",
          imageUrl: "https://images.pexels.com/photos/10361458/pexels-photo-10361458.jpeg",
          description: "10 crispy wings with your choice of Buffalo or BBQ sauce.",
        ),
        Product(
          name: "Nachos Supremo",
          price: "\$10.00",
          imageUrl: "https://images.pexels.com/photos/1580107/pexels-photo-1580107.jpeg",
          description: "Corn chips, melted cheese, jalapeños, salsa, and sour cream.",
        ),
      ],
    ),
  ];
}

List<Brand> get sampleBrands => Brand.sampleBrands;
