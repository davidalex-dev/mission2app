part of 'pages.dart';

class BookingForm extends StatefulWidget{
  const BookingForm({Key? key}): super(key: key);
  static const String routeName = 'BookingForm';

  @override
  _BookingFormState createState() => _BookingFormState();
}

class _BookingFormState extends State<BookingForm>{

  @override
  void initState(){
    super.initState();
  }

  final _bookingKey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Booking Form")
        ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _bookingKey,
          child: Column(
            children: [

              SizedBox(height:32),

              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Name",
                  prefixIcon: Icon(Icons.person)
                ),
                controller: ctrlName,
                validator: (value){
                  return value.toString().length < 1
                      ? 'Enter your name' : null;
                }
              ),

              SizedBox(height:32),

              TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email)
                  ),
                controller: ctrlEmail,
                validator: (value){
                    return !EmailValidator.validate(value.toString())
                        ? 'Email format is not valid' : null;
                }
              ),

              SizedBox(height:32),

              TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      prefixIcon: Icon(Icons.phone)
                  ),
                controller: ctrlPhone,
                validator: (value){
                    return value.toString().length < 6
                        ? 'Enter your phone number' : null;
                }
              ),

              SizedBox(height:32),

              TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "City",
                      prefixIcon: Icon(Icons.location_city)
                  ),
                controller: ctrlCity,
                validator: (value){
                  return value.toString().length < 1
                      ? 'Enter your city' : null;
                }
              ),

              ElevatedButton.icon(
                onPressed: () {

                  //check all forms
                  // if form not all filled

                  if(_bookingKey.currentState!.validate()){
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) =>
                            AlertDialog(
                                title: Text("Booking Confirmation"),
                                content: Text("Name: " + ctrlName.text.toString() +
                                "\nEmail: " + ctrlEmail.text.toString() +
                                "\nPhone: " + ctrlPhone.text.toString() +
                                "\nCity: " + ctrlCity.text.toString()),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context,"OK"),
                                    child: const Text("OK"),
                                  )
                                ]
                            )
                    );
                  }else{
                    showDialog<String>(
                        context: context,
                        builder: (BuildContext context) =>
                            AlertDialog(
                                title: Text("Booking Failed"),
                                content: Text("Please fill all fields!"),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context,"OK"),
                                    child: const Text("OK"),
                                  )
                                ]
                            )
                    );
                  }
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