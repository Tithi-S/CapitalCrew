// ignore_for_file: public_member_api_docs, sort_constructors_first
class Contact {
  final String imageUrl;
  final String contactName;
  String newChat;
  final String time;
  List chatList;
  Contact({
    required this.imageUrl,
    required this.contactName,
    required this.newChat,
    required this.time,
    required this.chatList,
  });
}

String imageDir = "assets/images";
List<Contact> contactsList = [
  Contact(
    chatList: [
      ["I'm waiting Bro", false],
      ["Kok lama bangettt", false],
      ["Iya bro bentar, lagi nonton sepak bola", true],
      ["Alaahh TAILAH, capek nunggu", false],
      ["Sabar Broooo, lagi dikit niii", true],
      ["Sini aja dulu ke rumah gw", true],
      ["Yaudah lah ,otw", false],
      ["Nitip gorengan 5rb", true],
      ["wah kek babi kauu, okelah", false],
    ],
    imageUrl: "$imageDir/thor_pp.jpg",
    contactName: "Thor Odinson",
    newChat: "What more could i lose?",
    time: "15.43",
  ),
  Contact(
    chatList: [
      ["I'm waiting Bro", false],
      ["Kok lama bangettt", false],
      ["Iya bro bentar, lagi nonton sepak bola", true],
      ["Alaahh TAILAH, capek nunggu", false],
      ["Sabar Broooo, lagi dikit niii", true],
      ["Sini aja dulu ke rumah gw", true],
      ["Yaudah lah ,otw", false],
      ["Nitip gorengan 5rb", true],
      ["wah kek babi kauu, okelah", false],
    ],
    imageUrl: "$imageDir/stave_roger.jpg",
    contactName: "Steve Roger",
    newChat: "I can do this all day",
    time: "15.29",
  ),
  Contact(
    chatList: [
      ["I'm waiting Bro", false],
      ["Kok lama bangettt", false],
      ["Iya bro bentar, lagi nonton sepak bola", true],
      ["Alaahh TAILAH, capek nunggu", false],
      ["Sabar Broooo, lagi dikit niii", true],
      ["Sini aja dulu ke rumah gw", true],
      ["Yaudah lah ,otw", false],
      ["Nitip gorengan 5rb", true],
      ["wah kek babi kauu, okelah", false],
    ],
    imageUrl: "$imageDir/buzz_lightyear.jpg",
    contactName: "Buzz Lightyear",
    newChat: "To infinity and beyond!",
    time: "14.53",
  ),
  Contact(
    chatList: [
      ["I'm waiting Bro", false],
      ["Kok lama bangettt", false],
      ["Iya bro bentar, lagi nonton sepak bola", true],
      ["Alaahh TAILAH, capek nunggu", false],
      ["Sabar Broooo, lagi dikit niii", true],
      ["Sini aja dulu ke rumah gw", true],
      ["Yaudah lah ,otw", false],
      ["Nitip gorengan 5rb", true],
      ["wah kek babi kauu, okelah", false],
    ],
    imageUrl: "$imageDir/daniel-lincoln.jpg",
    contactName: "Juragan Bakso",
    newChat: "Bakso lejat dan bergiji",
    time: "12.27",
  ),
  Contact(
    chatList: [
      ["I'm waiting Bro", false],
      ["Kok lama bangettt", false],
      ["Iya bro bentar, lagi nonton sepak bola", true],
      ["Alaahh TAILAH, capek nunggu", false],
      ["Sabar Broooo, lagi dikit niii", true],
      ["Sini aja dulu ke rumah gw", true],
      ["Yaudah lah ,otw", false],
      ["Nitip gorengan 5rb", true],
      ["wah kek babi kauu, okelah", false],
    ],
    imageUrl: "$imageDir/ransford-quaye.jpg",
    contactName: "Orang Keren",
    newChat: "dua tiga bunga raya",
    time: "12.30",
  ),
  Contact(
    chatList: [
      ["I'm waiting Bro", false],
      ["Kok lama bangettt", false],
      ["Iya bro bentar, lagi nonton sepak bola", true],
      ["Alaahh TAILAH, capek nunggu", false],
      ["Sabar Broooo, lagi dikit niii", true],
      ["Sini aja dulu ke rumah gw", true],
      ["Yaudah lah ,otw", false],
      ["Nitip gorengan 5rb", true],
      ["wah kek babi kauu, okelah", false],
    ],
    imageUrl: "$imageDir/aiony-haust.jpg",
    contactName: "Mbak Sukijem",
    newChat: "Kamu bukan kawan saya",
    time: "11.40",
  ),
];
