part of 'pages.dart';

class BookingForm extends StatefulWidget{
  const BookingForm({Key? key}): super(key: key);
  static const String routeName = 'BookingForm';

  @override
  _BookingFormState createState() => _BookingFormState();
}

class _BookingFormState extends State<BookingForm>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Booking Form")),
    );
  }

}