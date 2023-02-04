// ignore_for_file: public_member_api_docs, sort_constructors_first
class Contact {
  final String imageUrl;
  final String contactName;
  final String newChat;
  final String time;
  Contact({
    required this.imageUrl,
    required this.contactName,
    required this.newChat,
    required this.time,
  });
}

String imageDir = "assets/images";
List<Contact> contactsList = [
  Contact(
    imageUrl: "$imageDir/thor_pp.jpg",
    contactName: "Thor Odinson",
    newChat: "What more could i lose?",
    time: "15.43",
  ),
  Contact(
    imageUrl: "$imageDir/stave_roger.jpg",
    contactName: "Steve Roger",
    newChat: "I can do this all day",
    time: "15.29",
  ),
  Contact(
    imageUrl: "$imageDir/buzz_lightyear.jpg",
    contactName: "Buzz Lightyear",
    newChat: "To infinity and beyond!",
    time: "14.53",
  ),
  Contact(
    imageUrl: "$imageDir/daniel-lincoln.jpg",
    contactName: "Juragan Bakso",
    newChat: "Bakso lejat dan bergiji",
    time: "12.27",
  ),
  Contact(
    imageUrl: "$imageDir/ransford-quaye.jpg",
    contactName: "Orang Keren",
    newChat: "dua tiga bunga raya",
    time: "12.30",
  ),
  Contact(
    imageUrl: "$imageDir/aiony-haust.jpg",
    contactName: "Mbak Sukijem",
    newChat: "Kamu bukan kawan saya",
    time: "11.40",
  ),
];
