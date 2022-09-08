




class Catagory{

 String title;

 String image;

 int id;
 Catagory(this.title,this.image,this.id);

static  List <Catagory>   getCatagory(){

  return [ Catagory('Action','assets/images/actionfilm.jpeg',28),
   Catagory('Drama','assets/images/drama.jpg', 18),
   Catagory('Adventure','assets/images/adventure.jpg',12),
   Catagory('Comedy','assets/images/comdey.jpg',35),
   Catagory('Romantic','assets/images/romantic.jpg', 10749),
   Catagory('Fantasy','assets/images/fantasty.jpg', 14),
   Catagory('Horror','assets/images/horror.png', 27),
   Catagory('Mystery','assets/images/mysteries.jpg',9648),
   Catagory('Science Fiction','assets/images/sciencefiction.jpg',878),
   Catagory('History','assets/images/sports.jpg',36),
   Catagory('Thriller','assets/images/triller.jpg',53),
   Catagory('Western','assets/images/western.jpg',37),
   ];
 }



}