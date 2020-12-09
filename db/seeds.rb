


Tax.create([{title:'Service Tax',charge:14},{title:'Swachh Bharat Cess',charge:0.5},{title:'Krishi Kalyan Cess',charge:0.5}])


  screen1 = Screen.create({ title: 'Audi 1' })
  screen1.seats.create([{name: 'A1',seat_category:'Platinum'},
    {name: 'A2',seat_category:'Platinum'},
    {name: 'A3',seat_category:'Platinum'},
    {name: 'A4',seat_category:'Platinum'},
    {name: 'A5',seat_category:'Platinum'},
    {name: 'A6',seat_category:'Platinum'},
    {name: 'A7',seat_category:'Platinum'},
    {name: 'A8',seat_category:'Platinum'},
    {name: 'A9',seat_category:'Platinum'},
    {name: 'B1',seat_category:'Gold'},
    {name: 'B2',seat_category:'Gold'},
    {name: 'B3',seat_category:'Gold'},
    {name: 'B4',seat_category:'Gold'},
    {name: 'B5',seat_category:'Gold'},
    {name: 'B6',seat_category:'Gold'},
    {name: 'C2',seat_category:'Silver'},
    {name: 'C3',seat_category:'Silver'},
    {name: 'C4',seat_category:'Silver'},
    {name: 'C5',seat_category:'Silver'},
    {name: 'C6',seat_category:'Silver'},
    {name: 'C7',seat_category:'Silver'}])



    screen2 = Screen.create({ title: 'Audi 2' })
    screen2.seats.create([
      {name: 'A1',seat_category:'Platinum'},
      {name: 'A2',seat_category:'Platinum'},
      {name: 'A3',seat_category:'Platinum'},
      {name: 'A4',seat_category:'Platinum'},
      {name: 'A5',seat_category:'Platinum'},
      {name: 'A6',seat_category:'Platinum'},
      {name: 'A7',seat_category:'Platinum'},
      {name: 'B2',seat_category:'Gold'},
      {name: 'B3',seat_category:'Gold'},
      {name: 'B4',seat_category:'Gold'},
      {name: 'B5',seat_category:'Gold'},
      {name: 'B6',seat_category:'Gold'},
      {name: 'C1',seat_category:'Silver'},
      {name: 'C2',seat_category:'Silver'},
      {name: 'C3',seat_category:'Silver'},
      {name: 'C4',seat_category:'Silver'},
      {name: 'C5',seat_category:'Silver'},
      {name: 'C6',seat_category:'Silver'},
      {name: 'C7',seat_category:'Silver'}])


      screen3 = Screen.create({ title: 'Audi 3' })
      screen3.seats.create([
        {name: 'A1',seat_category:'Platinum'},
        {name: 'A2',seat_category:'Platinum'},
        {name: 'A3',seat_category:'Platinum'},
        {name: 'A4',seat_category:'Platinum'},
        {name: 'A5',seat_category:'Platinum'},
        {name: 'A6',seat_category:'Platinum'},
        {name: 'A7',seat_category:'Platinum'},
        {name: 'B1',seat_category:'Gold'},
        {name: 'B2',seat_category:'Gold'},
        {name: 'B3',seat_category:'Gold'},
        {name: 'B4',seat_category:'Gold'},
        {name: 'B5',seat_category:'Gold'},
        {name: 'B6',seat_category:'Gold'},
        {name: 'B7',seat_category:'Gold'},
        {name: 'B8',seat_category:'Gold'},
        {name: 'C1',seat_category:'Silver'},
        {name: 'C2',seat_category:'Silver'},
        {name: 'C3',seat_category:'Silver'},
        {name: 'C4',seat_category:'Silver'},
        {name: 'C5',seat_category:'Silver'},
        {name: 'C6',seat_category:'Silver'},
        {name: 'C7',seat_category:'Silver'},
        {name: 'C8',seat_category:'Silver'},
        {name: 'C9',seat_category:'Silver'}])



    Movie.create([{ title: 'Star Wars',active:true },
       { title: 'Lord of the Rings',active:true },
       { title: 'Sully' ,active:true}])

    Show.create([{movie_id:1,screen_id:1,active:true},
      {movie_id:1,screen_id:2,active:true},
      {movie_id:3,screen_id:3,active:true}])