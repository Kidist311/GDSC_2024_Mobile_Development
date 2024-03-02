import "package:flutter/material.dart";

class theem with ChangeNotifier {
  //final indexclicked = Colors.blue[100];
  //final indexnotclicked = Colors.white10;
  static final icons = [
    Icons.home,
    Icons.search,
    Icons.people,
    Icons.share,
    Icons.star,
  ];
  static final assetImages = [
    "assets/a.jpg",
    "assets/bc.jpg",
    "assets/c.jpg",
    "assets/d.jpg",
    "assets/ef.jpg",
    "assets/f.jpg",
  ];
  static final newImages = [
    "assets/a.jpg",
    "assets/bc.jpg",
    "assets/c.jpg",
    "assets/d.jpg",
  ];
  static final imageName = [
    "Fiker eske\n mekabir",
    "Andromeda principle\n of ethiopia",
    "Birekrikta",
    "Reach dad\npoor dad",
    "Man search\nfor meaning",
    "Roots"
  ];

  static final text = [
    "Health",
    "Science",
    "technology",
    "History",
    "Philosophy",
  ];

  static final trendingImages = [
    "assets/d.jpg",
    "assets/bc.jpg",
    "assets/c.jpg",
    "assets/a.jpg",
  ];
  static final trendingName = [
    "Reach dad\npoor dad",
    "Andromeda principle\n of ethiopia",
    "Birekrikta",
    "Fiker eske\n mekabir",
  ];

  static final trendingbookinfo = [
    "Rich Dad Poor Dad is a personal finance book written by Robert T. Kiyosaki.\n It uses the author's own experiences growing up with two father figures, one rich and one poor, to impart financial wisdom.\n The book emphasizes the importance of financial education, investing, and building assets to achieve financial independence.\n It challenges traditional beliefs about money and encourages readers to adopt a mindset focused on generating passive income and wealth accumulation.",
    "The Andromeda Principle by Yohannes Admassu is a thought-provoking work that delves into the complexities of identity, history, and cultural heritage. Through a unique narrative style, the novel explores the struggle of individuals to reconcile their personal identities with the historical and cultural legacies of Ethiopia. The story weaves together elements of science fiction, history, and philosophy to create a compelling and thought-provoking exploration of Ethiopian identity.",
    "Birekrikta by Haddis Alemayehu is a classic Ethiopian novel that delves into the intricacies of love, power, and morality within the context of Ethiopian society.\n Set against the backdrop of a changing Ethiopia, the novel follows the lives of its characters as they navigate the complexities of love, betrayal, and social hierarchy.\n Through rich and vivid storytelling, Alemayehu paints a captivating portrait of Ethiopian life and culture.",
    "Fikir Eske Mekabir by Haddis Alemayehu is an iconic Ethiopian novel that portrays the challenges and triumphs of love and relationships amidst a backdrop of historical and social change.\n The novel follows the intertwining lives of its characters as they navigate love, heartbreak, and societal expectations in a rapidly evolving Ethiopia. Alemayehu's masterful storytelling captures the essence of Ethiopian culture and history while delivering a timeless tale of human emotions and resilience."
  ];

  static final aboutAuthor = [
    "Rich Dad Poor Dad by Robert T. Kiyosaki is a personal finance classic that has resonated with readers around the world. The book challenges traditional ideas about money and offers valuable insights into how to achieve financial independence.",
    "Yohannes Admassus The Andromeda Principle is a captivating exploration of identity, history, and culture through the lens of science fiction and philosophical inquiry. The novel challenges readers to critically examine the world around them, inviting them to ponder the intricate interconnectedness of human experience.",
    "Alemayehus rich storytelling and profound understanding of Ethiopian culture have made him a revered figure in Ethiopian literature. ",
    "Fikir Eske Mekabir are celebrated for their poignant portrayal of love, morality, and social change within the context of Ethiopian society. "
  ];static final recomendationName = [
    "Fiker eske\n mekabir",
    "Andromeda principle\n of ethiopia",
    "Birekrikta",
    "Reach dad\npoor dad",
    "Man search\nfor meaning",
    "Roots"
  ];

  static final recomendationbookinfo = [
    "Fikir Eske Mekabir by Haddis Alemayehu is an iconic Ethiopian novel that portrays the challenges and triumphs of love and relationships amidst a backdrop of historical and social change.\n The novel follows the intertwining lives of its characters as they navigate love, heartbreak, and societal expectations in a rapidly evolving Ethiopia.\n Alemayehu's masterful storytelling captures the essence of Ethiopian culture and history while delivering a timeless tale of human emotions and resilience.",
    "The Andromeda Principle by Yohannes Admassu is a thought-provoking work that delves into the complexities of identity, history, and cultural heritage.\n Through a unique narrative style, the novel explores the struggle of individuals to reconcile their personal identities with the historical and cultural legacies of Ethiopia.\n The story weaves together elements of science fiction, history, and philosophy to create a compelling and thought-provoking exploration of Ethiopian identity.",
    "Birekrikta by Haddis Alemayehu is a classic Ethiopian novel that delves into the intricacies of love, power, and morality within the context of Ethiopian society.\n Set against the backdrop of a changing Ethiopia, the novel follows the lives of its characters as they navigate the complexities of love, betrayal, and social hierarchy.\n Through rich and vivid storytelling, Alemayehu paints a captivating portrait of Ethiopian life and culture.",
    "Rich Dad Poor Dad is a personal finance book written by Robert T. Kiyosaki.\n It uses the author's own experiences growing up with two father figures, one rich and one poor, to impart financial wisdom.\n The book emphasizes the importance of financial education, investing, and building assets to achieve financial independence.\n It challenges traditional beliefs about money and encourages readers to adopt a mindset focused on generating passive income and wealth accumulation.",
    " Man's Search for Meaning by Viktor E. Frankl is a profound and influential work that combines memoir and psychological insight.\n The book chronicles Frankls experiences as a prisoner in Nazi concentration camps during World War II and explores his development of logotherapy, a form of psychotherapy focused on finding meaning in life. Mans Search for Meaning delves into the human capacity for resilience, inner strength, and the pursuit of purpose, even in the face of extreme suffering.",
    " Roots by Alex Haley is a historical novel that tells the story of Kunta Kinte, an African man captured and sold into slavery in America, and follows his descendants through several generations.\n The book is a powerful exploration of the African American experience, tracing the impact of slavery on individuals and families.\n Published in 1976, Roots became a cultural phenomenon and a bestseller, and it was adapted into a highly acclaimed television miniseries.",
  ];

  static final recaboutAuthor = [
    "Fikir Eske Mekabir by Haddis Alemayehu is an iconic Ethiopian novel that portrays the challenges and triumphs of love and relationships amidst a backdrop of historical and social change.\n The novel follows the intertwining lives of its characters as they navigate love, heartbreak, and societal expectations in a rapidly evolving Ethiopia. Alemayehu's masterful storytelling captures the essence of Ethiopian culture and history while delivering a timeless tale of human emotions and resilience.",
    "Yohannes Admassus The Andromeda Principle is a captivating exploration of identity, history, and culture through the lens of science fiction and philosophical inquiry. The novel challenges readers to critically examine the world around them, inviting them to ponder the intricate interconnectedness of human experience.","Alemayehus rich storytelling and profound understanding of Ethiopian culture have made him a revered figure in Ethiopian literature. ",
    "Rich Dad Poor Dad by Robert T. Kiyosaki is a personal finance classic that has resonated with readers around the world. The book challenges traditional ideas about money and offers valuable insights into how to achieve financial independence.",
    " Viktor E. Frankl, the author of Mans Search for Meaning, was an Austrian neurologist and psychiatrist who survived the Holocaust. His experiences in the concentration camps deeply influenced his understanding of human psychology and led him to develop logotherapy. Frankl's book has had a lasting impact on readers and continues to be widely regarded as a seminal work in the fields of psychology and existential philosophy.",
    "Alex Haley, the author of Roots, was an American writer known for his work on African American history and genealogy.\n He conducted extensive research into his own family history, which inspired him to write Roots.\n The book was a groundbreaking work that brought attention to the history of slavery in America and its enduring legacy.",
  ];

  notifyListeners();
}