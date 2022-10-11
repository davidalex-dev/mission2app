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
        appBar: AppBar(
            title: Text("Booking Form")
        ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          child: Column(
            children: [

              SizedBox(height:32),

              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Name",
                  prefixIcon: Icon(Icons.person)
                )
              ),

              SizedBox(height:32),

              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email)
                  )
              ),

              SizedBox(height:32),

              TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      prefixIcon: Icon(Icons.phone)
                  )
              ),

              SizedBox(height:32),

              TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "City",
                      prefixIcon: Icon(Icons.location_city)
                  )
              ),

              SizedBox(height:32),

              ElevatedButton.icon(
                onPressed: () {

                },
                icon: Icon(Icons.app_registration),
                label: Text("Register")
              )

            ],
          )
        )

      )
    );
  }

}