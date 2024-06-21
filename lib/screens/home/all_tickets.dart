import 'package:flutter/material.dart';
import '../../base/res/widgets/ticket_view.dart';
import '../../base/utils/all.json.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("All Tickets"),
        ),
        body: ListView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: ticketList
                    .map(
                      (singleTicket) => Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: TicketView(
                          ticket: singleTicket,
                          wholeScreen: true,
                        ),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ));
  }
}
