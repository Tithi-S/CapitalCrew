// ignore_for_file: public_member_api_docs, sort_constructors_first
class Contact {
  final String imageUrl;
  final String contactName;
  final String time;
  List<List<dynamic>> chatList;
  String tag1; // Added tag1 field
  String tag2; // Added tag2 field

  Contact({
    required this.imageUrl,
    required this.contactName,
    required this.time,
    required this.chatList,
    this.tag1 = '', // Default empty string if not provided
    this.tag2 = '', // Default empty string if not provided
  });
}

String imageDir = "assets/icons";
List<Contact> contactsList = [
  Contact(
    chatList: [
      ["John Doe", "Let's discuss the quarterly report", false],
      ["Jane Smith", "Has anyone reviewed the new market trends?", false],
      ["You", "I think we should diversify the portfolio", true],
      ["Bob Brown", "Agreed, but which sectors are promising?", false],
      ["You", "Tech and renewable energy are good bets", true],
      ["You", "Any thoughts on emerging markets?", true],
      ["Scarlett Johansson", "I'm looking into Asia-Pacific opportunities", false],
      ["You", "Good idea, I'll start researching", true],
      ["Tom Hiddleston", "Let's set up a meeting to discuss", false],
    ],
    imageUrl: "$imageDir/finance_chart.png",
    contactName: "Global Investment Group",
    time: "15.43",
    tag1: "equity", // Added tag1
    tag2: "etfs", // Added tag2
  ),
  Contact(
    chatList: [
      ["John Doe", "Reminder: Annual strategy meeting tomorrow", false],
      ["Jane Smith", "Has everyone completed their market analysis?", false],
      ["You", "I have some insights on the tech sector", true],
      ["Bob Brown", "Excellent, please share in the meeting", false],
      ["You", "Also, update on our ETF performance", true],
      ["You", "I'll bring that up", true],
      ["Scarlett Johansson", "Anyone else with updates?", false],
      ["You", "Let's consolidate our data", true],
      ["Tom Hiddleston", "Ready for the meeting agenda", false],
    ],
    imageUrl: "$imageDir/portfolio.png",
    contactName: "Capital Growth Network",
    time: "15.29",
    tag1: "bonds", // Added tag1
    tag2: "mutual fund", // Added tag2
  ),
  Contact(
    chatList: [
      ["John Doe", "Check out the new investment opportunity", false],
      ["Jane Smith", "Do we have any analysts on this?", false],
      ["You", "Yes, we are looking into it", true],
      ["Bob Brown", "What are the initial findings?", false],
      ["You", "Potential high returns but high risk", true],
      ["You", "Any other opportunities?", true],
      ["Scarlett Johansson", "I'll update the group with more details", false],
      ["You", "Thanks, looking forward to it", true],
      ["Tom Hiddleston", "Let's discuss in the next call", false],
    ],
    imageUrl: "$imageDir/investment.png",
    contactName: "Future Wealth Club",
    time: "14.53",
    tag1: "debt funds", // Added tag1
    tag2: "equity", // Added tag2
  ),
  Contact(
    chatList: [
      ["John Doe", "Market trends report is out", false],
      ["Jane Smith", "Any major changes in the outlook?", false],
      ["You", "Yes, inflation is a concern", true],
      ["Bob Brown", "How will this impact our strategy?", false],
      ["Chris Evans", "We need to adjust our bond holdings", true],
      ["You", "Agreed, I'll make the necessary changes", true],
      ["Scarlett Johansson", "Anyone else with insights?", false],
      ["You", "Updating the investment strategy accordingly", true],
      ["Tom Hiddleston", "Thanks for the update", false],
    ],
    imageUrl: "$imageDir/stock_chart.png",
    contactName: "Investment Insight Group",
    time: "12.27",
    tag1: "bonds", // Added tag1
    tag2: "etfs", // Added tag2
  ),
  Contact(
    chatList: [
      ["John Doe", "Quick update on real estate investments", false],
      ["Jane Smith", "What’s the latest with the new properties?", false],
      ["You", "We’ve had positive feedback", true],
      ["Bob Brown", "Great, let’s proceed with the acquisition", false],
      ["You", "Also, review the lease agreements", true],
      ["You", "I’ll send out the updated documents", true],
      ["Scarlett Johansson", "Any other matters?", false],
      ["You", "None at the moment", true],
      ["Tom Hiddleston", "Thanks, keep us posted", false],
    ],
    imageUrl: "$imageDir/real_estate.png",
    contactName: "Property Investment Network",
    time: "12.30",
    tag1: "mutual fund", // Added tag1
    tag2: "rd", // Added tag2
  ),
  Contact(
    chatList: [
      ["John Doe", "Reminder: Upcoming investment webinar", false],
      ["Jane Smith", "Have all RSVPs been collected?", false],
      ["You", "Yes, we’re finalizing the list", true],
      ["Bob Brown", "Great, let’s confirm the schedule", true],
      ["Chris Evans", "I’ll handle the event logistics", false],
      ["You", "Thanks, looking forward to it", true],
      ["Scarlett Johansson", "Any other agenda items?", false],
      ["You", "Not at this time", true],
      ["Tom Hiddleston", "All set for the webinar", false],
    ],
    imageUrl: "$imageDir/webinar.png",
    contactName: "Wealth Builders Forum",
    time: "11.40",
    tag1: "equity", // Added tag1
    tag2: "debt funds", // Added tag2
  ),
];
