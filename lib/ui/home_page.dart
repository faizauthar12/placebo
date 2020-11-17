part of 'pages.dart';

class HomePage extends StatefulWidget {
  final String name;
  HomePage({@required this.name});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 100,
            width: size.width,
            margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.symmetric(
              horizontal: 29,
              vertical: 21,
            ),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/profile.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(360.0)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome!",
                        style: whiteTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.name,
                        style: whiteTextStyle.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 14.0),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Daftar Buku",
                  style: blackTextStyle.copyWith(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Container(
                  width: size.width,
                  height: size.height - 100,
                  child: ListView.builder(
                    itemCount: bookList.length,
                    itemBuilder: (context, index) {
                      final String bookTitle = bookList[index].bookTitle;
                      final String bookDesc = bookList[index].bookDesc;
                      final String photo = bookList[index].photo;
                      return BookCardItem(
                        bookDesc: bookDesc,
                        bookTitle: bookTitle,
                        photo: photo,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BookCardItem extends StatelessWidget {
  final String photo;
  final String bookTitle;
  final String bookDesc;

  BookCardItem(
      {@required this.photo,
      @required this.bookDesc,
      @required this.bookTitle});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;  // untuk dp atau sp di android studio
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(color: kPrimaryColor),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(12.0),
          topRight: Radius.circular(45.0),
          bottomLeft: Radius.circular(45.0),
          topLeft: Radius.circular(12.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              photo,
              height: size.height * 1 / 10,
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookTitle,
                  style: blackTextStyle.copyWith(fontSize: 15.0),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  bookDesc,
                  style: blackTextStyle.copyWith(fontSize: 8),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
