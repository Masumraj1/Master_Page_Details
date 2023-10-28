class Product {
  final String name;
  final String description;
  final String image;
  final String des;
  final String email;
  final int number;


  Product(this.name, this.description,  this.image,this.des,this.email,this.number);

  static List<Product> getProducts() {
    List<Product> items = <Product>[];

    items.add(
        Product(
            "Babul Mirdha",
            "CEO at ALOR FERI",
            "babul.png",
            "Mr. Babul Mirdha, currently working as Senior Software Architect & \n "
                "Head of the Department at Enterprise Mobile Application & Services at Bd Calling It limited. \n"
                "He is leading the most successful Mobile Apps Project that runs in several Clients of LEADS.",
          "mail.png",
          01731090564
        )
    );
    items.add(
        Product(
            "Hasin Hayder",
            "PHP Developer",
            "hasin.png",
            "First of all Hasin Hyder hardcore php & javascript programmer, and then there comes an author,\n "
                " A hobbyist photographer, A die hard WordPress theme developer and an organizer. \n "
                "Hasin Hyder have been programming in PHP since 2003 and javascript since 2005.",
          "mail.png",
          01926834622
        )
    );
    items.add(
        Product(
            "Rasel Ahmed",
            "CEO At RRF Institute",
            "rasel.png",
            "Rasel Ahmed is CEO of RRF institute.Rasel Ahmed is a Software Engineer at Get Found First,\n "
                "I think he is the best youtube teacher  in our country. ",
            "mail.png",
          01846739538
        )
    );
    items.add(
        Product(
            "Sumit Saha",
            "Co-founder At Analyzen",
            "sumit.png",
            " Sumit Saha is Co_founder of Analyzen.com .Sumit saha is a popular youtube content creator.\n"
                "He completed graduation from Bangladesh University of Engineering and Technology. ",
          "mail.png",
          01722838260
        )
    );
    items.add(
        Product(
            "Raisul Kabir",
            "CEO of Brain Station",
            "raisul.png",
            "Raisul Kabir is co-founder of PriyoShop.com. He has been a Technology driven Entrepreneur for last 12 years. He completed graduation\n"
                " from Bangladesh University of Engineering and Technology. He is also co-founder of Brain Station 23 Ltd",
          "mail.png",
          01710623293
        )
    );
    return items;
  }
}