// ignore_for_file: public_member_api_docs, sort_constructors_first
class Contact {
  final String imageUrl;
  final String contactName;
  final String time;
  List chatList;
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
      ["Let's discuss the quarterly report", false],
      ["Has anyone reviewed the new market trends?", false],
      ["I think we should diversify the portfolio", true],
      ["Agreed, but which sectors are promising?", false],
      ["Tech and renewable energy are good bets", true],
      ["Any thoughts on emerging markets?", true],
      ["I'm looking into Asia-Pacific opportunities", false],
      ["Good idea, I'll start researching", true],
      ["Let's set up a meeting to discuss", false],
    ],
    imageUrl: "$imageDir/finance_chart.png",
    contactName: "Global Investment Group",
    time: "15.43",
    tag1: "equity", // Added tag1
    tag2: "etfs", // Added tag2
  ),
  Contact(
    chatList: [
      ["Reminder: Annual strategy meeting tomorrow", false],
      ["Has everyone completed their market analysis?", false],
      ["I have some insights on the tech sector", true],
      ["Excellent, please share in the meeting", false],
      ["Also, update on our ETF performance", true],
      ["I'll bring that up", true],
      ["Anyone else with updates?", false],
      ["Let's consolidate our data", true],
      ["Ready for the meeting agenda", false],
    ],
    imageUrl: "$imageDir/portfolio.png",
    contactName: "Capital Growth Network",
    time: "15.29",
    tag1: "bonds", // Added tag1
    tag2: "mutual fund", // Added tag2
  ),
  Contact(
    chatList: [
      ["Check out the new investment opportunity", false],
      ["Do we have any analysts on this?", false],
      ["Yes, we are looking into it", true],
      ["What are the initial findings?", false],
      ["Potential high returns but high risk", true],
      ["Any other opportunities?", true],
      ["I'll update the group with more details", false],
      ["Thanks, looking forward to it", true],
      ["Let's discuss in the next call", false],
    ],
    imageUrl: "$imageDir/investment.png",
    contactName: "Future Wealth Club",
    time: "14.53",
    tag1: "debt funds", // Added tag1
    tag2: "equity", // Added tag2
  ),
  Contact(
    chatList: [
      ["Market trends report is out", false],
      ["Any major changes in the outlook?", false],
      ["Yes, inflation is a concern", true],
      ["How will this impact our strategy?", false],
      ["We need to adjust our bond holdings", true],
      ["Agreed, I'll make the necessary changes", true],
      ["Anyone else with insights?", false],
      ["Updating the investment strategy accordingly", true],
      ["Thanks for the update", false],
    ],
    imageUrl: "$imageDir/stock_chart.png",
    contactName: "Investment Insight Group",
    time: "12.27",
    tag1: "bonds", // Added tag1
    tag2: "etfs", // Added tag2
  ),
  Contact(
    chatList: [
      ["Quick update on real estate investments", false],
      ["What’s the latest with the new properties?", false],
      ["We’ve had positive feedback", true],
      ["Great, let’s proceed with the acquisition", false],
      ["Also, review the lease agreements", true],
      ["I’ll send out the updated documents", true],
      ["Any other matters?", false],
      ["None at the moment", true],
      ["Thanks, keep us posted", false],
    ],
    imageUrl: "$imageDir/real_estate.png",
    contactName: "Property Investment Network",
    time: "12.30",
    tag1: "mutual fund", // Added tag1
    tag2: "rd", // Added tag2
  ),
  Contact(
    chatList: [
      ["Reminder: Upcoming investment webinar", false],
      ["Have all RSVPs been collected?", false],
      ["Yes, we’re finalizing the list", true],
      ["Great, let’s confirm the schedule", true],
      ["I’ll handle the event logistics", false],
      ["Thanks, looking forward to it", true],
      ["Any other agenda items?", false],
      ["Not at this time", true],
      ["All set for the webinar", false],
    ],
    imageUrl: "$imageDir/webinar.png",
    contactName: "Wealth Builders Forum",
    time: "11.40",
    tag1: "equity", // Added tag1
    tag2: "debt funds", // Added tag2
  ),
];
