import 'package:randomContacts/app/module.dart';

class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage(this.user) : assert(user != null);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.lightBlue[300], Colors.lightBlue[100]],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Positioned(
              top: 60,
              child: InformationCard(user),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.network(user.largePicture),
            ),
          ],
        ),
      ),
    );
  }
}

//Widget for displaying the information of the current user
class InformationCard extends StatelessWidget {
  const InformationCard(this.user, {Key key}) : super(key: key);

  final User user;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Card(
      color: Colors.white70,
      elevation: 20,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 80,
          left: 15,
          right: 15,
          bottom: 15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              width: 0.8 * width,
              child: Text(
                '${user.firstName} ${user.lastName}',
                style: TextStyle(fontSize: width * 0.09),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DetailInformation(
              information: user.email,
              icon: Icons.email,
            ),
            SizedBox(height: 5),
            DetailInformation(
              information: user.city,
              icon: Icons.location_city,
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(
                  Icons.place,
                  size: 40,
                ),
                SizedBox(width: 10),
                Image.asset(
                  'icons/flags/png/${user.country.toLowerCase()}.png',
                  package: 'country_icons',
                  width: 60,
                ),
              ],
            ),
            SizedBox(height: 5),
            DetailInformation(
              information: user.cellNumber,
              icon: Icons.phone,
            ),
          ],
        ),
      ),
    );
  }
}

//Row Widget to display specific detail Information with Icon
class DetailInformation extends StatelessWidget {
  const DetailInformation({this.icon, this.information});

  final IconData icon;
  final String information;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Icon(
          icon,
          size: 40,
        ),
        SizedBox(width: 10),
        Text(
          information,
          style: TextStyle(fontSize: width * 0.05),
        ),
      ],
    );
  }
}
