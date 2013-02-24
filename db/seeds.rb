printf "Removing events..."
Event.all.destroy
printf " Done!\n"

printf "Removing users..."
User.all.destroy
printf " Done!\n"

# Create users

printf("Creating users...")
# User.create(
#   provider: "google_oauth2",
#   uid: "103321783031167252090",
#   name: "Ekaterina Makarova",
#   image_url: "https://lh3.googleusercontent.com/-ZNjuTYySzRM/AAAAAAAAAAI/AAAAAAAACNA/NRMmsztzYxQ/photo.jpg",
#   profile_url: "https://plus.google.com/103321783031167252090"
# )
# User.create(
# provider: "google_oauth2",
# uid: "116077413933138989125",
# name: "Mikhail Smirnov",
# image_url: "https://lh3.googleusercontent.com/-3ATtQMMpOzs/AAAAAAAAAAI/AAAAAAAAABg/NyUkJB1RwWE/photo.jpg",
# profile_url: "https://plus.google.com/116077413933138989125"
# )
User.create(
  provider: "google_oauth2",
  uid: "100643097555578261454",
  name: "Artem Moroz",
  image_url: "https://lh6.googleusercontent.com/-fLV39T_Ejkg/AAAAAAAAAAI/AAAAAAAAAEA/IxNW3M1tul0/photo.jpg",
  profile_url: "https://plus.google.com/100643097555578261454"
)
# User.create(
#   provider: "google_oauth2",
#   uid: "111184180763191522809",
#   name: "Alex Gaputin",
#   image_url: "https://lh3.googleusercontent.com/-3Oa-f2MjjVU/AAAAAAAAAAI/AAAAAAAAANY/A3_MVDDp9j8/photo.jpg",
#   profile_url: "https://plus.google.com/111184180763191522809"
# )

# ADD THIS MANUALLY!
# User.create(
#   provider: "google_oauth2",
#   uid: "108520467743641645144",
#   name: "илья сергеевич",
#   image_url: "https://lh6.googleusercontent.com/-D2xNS3pe57M/AAAAAAAAAAI/AAAAAAAADDc/U5TAD3hICtU/photo.jpg",
#   profile_url: "https://plus.google.com/108520467743641645144",
# )

User.create(
  provider: "facebook",
  uid: "100004799014941",
  name: "Nik Smith",
  image_url: "http://graph.facebook.com/100004799014941/picture?type=square",
  profile_url: "http://www.facebook.com/nik.smith.1023"
)

User.create(
  provider: "facebook",
  uid: "100000404712006",
  name: "Maxim Pokidaylo",
  image_url: "http://graph.facebook.com/100000404712006/picture?type=square",
  profile_url: "http://www.facebook.com/maxim.pokidaylo"
)

User.create(
  provider: "facebook",
  uid: "742215700",
  name: "Artem Ustimenko",
  image_url: "http://graph.facebook.com/742215700/picture?type=square",
  profile_url: "http://www.facebook.com/artem.ustimenko.5"
)

# ADD THIS MANUALLY!
# User.create(
#   provider: "facebook",
#   uid: "1264933098",
#   name: "Илюха Сергеевич Տեր-Մինասյան",
#   image_url: "http://graph.facebook.com/1264933098/picture?type=square",
#   profile_url: "http://www.facebook.com/n3m8tz"
# )

User.create(
  provider: "facebook",
  uid: "584755799",
  name: "Alex Gaputin",
  image_url: "http://graph.facebook.com/584755799/picture?type=square",
  profile_url: "http://www.facebook.com/agaputin"
)

User.create(
  provider: "facebook",
  uid: "518206113",
  name: "Ivan Popov",
  image_url: "http://graph.facebook.com/518206113/picture?type=square",
  profile_url: "http://www.facebook.com/inpopov"
)

# User.create(
#   provider: "google_oauth2",
#   uid: "109175216560243910584",
#   name: "Nikolay Smirnov",
#   image_url: "https://lh6.googleusercontent.com/-Uyz38IdTE4E/AAAAAAAAAAI/AAAAAAAAAKs/Y_POCj6JMFc/photo.jpg",
#   profile_url: "https://plus.google.com/109175216560243910584"
# )

User.create(
  provider: "google_oauth2",
  uid: "111472809503344423926",
  name: "Mikhail Smirnov",
  image_url: "https://lh3.googleusercontent.com/-sMbE_74XsxU/AAAAAAAAAAI/AAAAAAAAAHI/bY5OwuxLdsU/photo.jpg",
  profile_url: "https://plus.google.com/111472809503344423926"
)

User.create(
  provider: "facebook",
  uid: "706424478",
  name: "Ekaterina Makarova",
  image_url: "http://graph.facebook.com/706424478/picture?type=square",
  profile_url: "http://www.facebook.com/ekaterina.makarova.r"
)

User.create(
  provider: "facebook",
  uid: "1632278088",
  name: "Artem Morozov",
  image_url: "http://graph.facebook.com/1632278088/picture?type=square",
  profile_url: "http://www.facebook.com/artem.morozov.125"
)

User.create(
  provider: "facebook",
  uid: "100000067564985",
  name: "Nikolay Smirnov",
  image_url: "http://graph.facebook.com/100000067564985/picture?type=square",
  profile_url: "http://www.facebook.com/nikolay.smirnov.5"
)
User.create(
  provider: "facebook",
  uid: "100000496046469",
  name: "Yuriy Lavor",
  image_url: "http://graph.facebook.com/100000496046469/picture?type=square",
  profile_url: "http://www.facebook.com/yuriy.lavor"
)

user = User.create(
  provider: "twitter",
  uid: "362730092",
  name: "Nikolay",
  image_url: "http://a0.twimg.com/profile_images/2979741176/9fb3c4d72dfc2b4c87afcd9169a01f77_normal.jpeg",
  profile_url: "http://twitter.com/smirn0v"
)
user.admin = true
user.save

printf " Done!\n"

# Create events
printf "Creating events..."
Event.create(
  name: "Komanda Beach Party 1",
  price: 5,
  date: "29 Jul 2012",
  time: "11:00",
  flyer: "http://img839.imageshack.us/img839/6303/flyermk.jpg",
  description: "<p>
      Its time to beat the heat and chill in style with (KBP) KOMANDA BEACH PARTY, the hottest beach event this summer.
      With the wildest music and the sexiest crowd.
      Check out the action of Wet & Hot Komanda Beach Party at the Venice Beach Half Moon Bay!
      </p>
      <p>
      A reserved beach just for you, those who love to party and have fun!
      </p>
      <ul class='unstyled'>
      <li><strong>ADMISSION:</strong> $5 per person</li>
      <li><strong>PARKING:</strong> $8 per car</li>
      <li>RESERVED BEACH</li>
      <li>ALL DAY NON-STOP MUSIC WITH LIVE DJ</li>
      <li>LOTS OF FOOD (BBQ) </li>
      <li>Drinks to keep you going (Red bull, Vodka, Beer)(21 and up)</li>
      <li>Fun Games Volleyball, Football, Beach Soccer, Beer Pong, Ultimate Frisbee</li>  
      <li>Komanda Pranks/Challenges</li>
      </ul>

      <strong>Few things to remember:</strong>
      <ul class='unstyled'>
      <li>Make sure to bring $5(cash only/admission)</li>
      <li>Admission gets you (OPEN BAR with VODKA, REDBULL and BEER + BBQ FOOD!)</li>
      <li>$10(parking/carpooling is HIGHLY encouraged) </li>
      <li>ID (for the alcohol) </li>
      <li>Bring a blanket if you want </li>
      <li>You are welcome to bring your own food/drinks ( We are going to have BBQ, Beer Vodka and Redbull)</li>
      </ul>

      <strong>Things NOT to bring:</strong>
      <ul class='unstyled'>
      <li>NO GLASS</li>
      <li>NO BALLOONS</li>
      <li>NO FIRE</li>
      </ul>",
  address: "Venice Blvd, Half Moon Bay, California 94019",
  map_link: "https://maps.google.com/maps?q=Venice+Blvd,+Half+Moon+Bay,+California+94019&hl=en&sll=37.40146,-121.987123&sspn=0.044797,0.088921&hnear=Venice+Blvd,+Half+Moon+Bay,+San+Mateo,+California+94019&t=m&z=16",
  pictures: "http://imageshack.us/scaled/large/717/image7xd.jpg http://imageshack.us/scaled/large/24/image6ymj.jpg http://imageshack.us/scaled/large/41/image5es.jpg http://imageshack.us/scaled/large/231/image4zxr.jpg http://imageshack.us/scaled/large/28/image3zcw.jpg http://imageshack.us/scaled/large/84/image2ngb.jpg http://imageshack.us/scaled/large/19/image1xus.jpg http://imageshack.us/scaled/large/831/iamge8.jpg".split()
)

Event.create(
  name: "Komanda Beach Party 2",
  price: 10,
  date: "26 Aug 2012",
  time: "11:00",
  flyer: "http://img443.imageshack.us/img443/433/flyersu.jpg",
  description: "<p>Its time to beat the heat and chill in style with (KBP) KOMANDA BEACH PARTY, the hottest beach event this summer.
      With the wildest music and the sexiest crowd.
      Check out the action of Wet & Hot Komanda Beach Party at the Venice Beach Half Moon Bay!
      </p>
      <p>
        A reserved beach just for you, those who love to party and have fun!
      </p>
      <ul class='unstyled'>
        <li><strong>ADMISSION:</strong> $10 per person</li>
        <li><strong>PARKING:</strong> $10 per car</li>
        <li>RESERVED BEACH</li>
        <li>ALL DAY NON-STOP MUSIC WITH LIVE DJ</li>
        <li>LOTS OF FOOD (BBQ) </li>
        <li>Drinks to keep you going (Red bull, Vodka, Beer)(21 and up)</li>
        <li>Fun Games/Tournaments Volleyball, Football, Beach Soccer, Beer Pong, Ultimate Frisbee, Komanda Pranks/Challenges</li>
      </ul> 
      <strong>Few things to remember:</strong>
      <ul class='unstyled'>
      <li>Make sure to bring cash for admission</li>
      <li>Admission gets you (OPEN BAR with VODKA, TEQUILA, and BEER + FOOD!)</li>
      <li>$10(parking/carpooling is HIGHLY encouraged)</li>
      <li>ID (for the alcohol)</li>
      <li>Bring a blanket if you want</li>
      <li>You are welcome to bring your own food/drinks ( We are going to have BBQ, Beer Vodka and Redbull)</li>
      </ul>

      <strong>Things NOT to bring:</strong>
      <ul class='unstyled'>
      <li>NO GLASS</li>
      <li>NO BALLOONS</li>
      <li>NO FIRE</li>
      </ul>",
  address: "Venice Blvd, Half Moon Bay, California 94019",
  map_link: "https://maps.google.com/maps?q=Venice+Blvd,+Half+Moon+Bay,+California+94019&hl=en&sll=37.40146,-121.987123&sspn=0.044797,0.088921&hnear=Venice+Blvd,+Half+Moon+Bay,+San+Mateo,+California+94019&t=m&z=16",
  pictures: "http://imageshack.us/a/img713/4359/49011445.jpg http://imageshack.us/a/img9/1209/85032364.jpg http://imageshack.us/a/img138/5994/43379652.jpg http://imageshack.us/a/img10/5756/56356404.jpg http://imageshack.us/a/img855/448/43948042.jpg http://imageshack.us/a/img208/5035/10152924.jpg http://imageshack.us/a/img18/4031/16230032.jpg http://imageshack.us/a/img252/9196/41077732.jpg http://imageshack.us/a/img24/5086/17221646.jpg http://imageshack.us/a/img4/840/i10cu.jpg http://imageshack.us/a/img221/5615/i11.jpg http://imageshack.us/a/img843/1039/i12b.jpg http://imageshack.us/a/img51/2628/i13h.jpg http://imageshack.us/a/img22/6363/i14v.jpg http://imageshack.us/a/img31/5059/i15lq.jpg http://imageshack.us/a/img19/8642/i23q.jpg http://imageshack.us/a/img844/4500/i30h.jpg http://imageshack.us/a/img843/6130/i37o.jpg http://imageshack.us/a/img41/7960/i36s.jpg http://imageshack.us/a/img837/379/i29u.jpg http://imageshack.us/a/img11/5098/i22i.jpg http://imageshack.us/a/img717/9895/i35f.jpg http://imageshack.us/a/img217/5561/i28c.jpg http://imageshack.us/a/img96/3940/i21mt.jpg http://imageshack.us/a/img23/1235/i20u.jpg http://imageshack.us/a/img836/5561/i27t.jpg http://imageshack.us/a/img51/8493/i34a.jpg http://imageshack.us/a/img72/1775/i33mx.jpg http://imageshack.us/a/img43/774/i26i.jpg http://imageshack.us/a/img819/6590/i18u.jpg http://imageshack.us/a/img42/7595/i17m.jpg http://imageshack.us/a/img855/3429/i25u.jpg http://imageshack.us/a/img571/179/i32hh.jpg http://imageshack.us/a/img825/1171/i31p.jpg http://imageshack.us/a/img59/3906/i24c.jpg http://imageshack.us/a/img41/9492/i16k.jpg http://imageshack.us/a/img231/9483/i38n.jpg http://imageshack.us/a/img72/1944/i39e.jpg http://imageshack.us/a/img248/8011/i40y.jpg http://imageshack.us/a/img90/1439/i41c.jpg http://imageshack.us/a/img195/6185/i42u.jpg http://imageshack.us/a/img84/6219/i43f.jpg http://imageshack.us/a/img515/9743/i44i.jpg http://imageshack.us/a/img259/6144/i45m.jpg http://imageshack.us/a/img442/1960/i46qs.jpg http://imageshack.us/a/img11/1857/i47i.jpg http://imageshack.us/a/img607/7743/i48w.jpg http://imageshack.us/a/img600/7310/i49h.jpg http://imageshack.us/a/img203/3084/i50w.jpg http://imageshack.us/a/img850/8500/i51x.jpg http://imageshack.us/a/img717/8211/i52p.jpg http://imageshack.us/a/img827/9305/i53j.jpg http://imageshack.us/a/img820/5342/i54h.jpg http://imageshack.us/a/img823/1714/i55u.jpg http://imageshack.us/a/img692/8946/i56s.jpg http://imageshack.us/a/img5/4339/i57k.jpg http://imageshack.us/a/img542/3806/i58s.jpg http://imageshack.us/a/img827/5221/i59v.jpg http://imageshack.us/a/img13/9460/i60l.jpg http://imageshack.us/a/img15/4700/i61c.jpg http://imageshack.us/a/img850/4389/i62.jpg http://imageshack.us/a/img515/9747/i63o.jpg http://imageshack.us/a/img31/6781/i64ks.jpg http://imageshack.us/a/img443/5808/i65f.jpg http://imageshack.us/a/img805/6839/i66h.jpg http://imageshack.us/a/img31/7455/i67e.jpg http://imageshack.us/a/img266/9872/i68p.jpg http://imageshack.us/a/img818/579/i69y.jpg http://imageshack.us/a/img266/8439/i70e.jpg http://imageshack.us/a/img443/1708/i71y.jpg http://imageshack.us/a/img831/5489/i72l.jpg http://imageshack.us/a/img132/2492/i73x.jpg http://imageshack.us/a/img402/7012/i74h.jpg http://imageshack.us/a/img6/1309/i75c.jpg http://imageshack.us/a/img838/9770/i76a.jpg http://imageshack.us/a/img543/293/i77q.jpg http://imageshack.us/a/img405/5810/i78g.jpg http://imageshack.us/a/img59/518/i79e.jpg".split()
)
  
Event.create(
  name: "Komanda Beach Party 3",
  price: 15,
  date: "23 Sep 2012",
  time: "11:00",
  flyer: "http://img29.imageshack.us/img29/9263/flyerdo.jpg",
  description: "<p><strong>Last beach party of the year!!!!!</strong></p>
      <p>Its time to party in style with (KBP) KOMANDA BEACH PARTY, the hottest beach event this summer.
      With the wildest music and the sexiest crowd.
      Check out the action of Wet & Hot Komanda Beach Party at the Venice Beach Half Moon Bay!</p>
      <p>A reserved beach just for you, those who love to party and have fun!</p>
      <ul class='unstyled'>
      <li><strong>Donations:</strong> $15 per person $10 if <em>200 people Going.</em></li>
      <li><strong>PARKING:</strong> $10 per car (state beach parking fee, CARPOOL!)</li>
      <li>RESERVED BEACH</li>
      <li>ALL DAY NON-STOP MUSIC</li>
      <li>LOTS OF FOOD (BBQ)</li>
      <li>Drinks to keep you going (Tequila, Vodka, Beer)(21 and up)</li>
      <li>Fun Games/Tournaments Volleyball, Football, Beach Soccer, Beer Pong, Dodgeball, Ultimate Frisbee, Komanda Pranks/Challenges!</li>
      </ul>

      <p><strong>Few things to remember:</strong></p>
      <ul class='unstyled'>
      <li>Make sure to bring cash for donations</li>
      <li>15$ gets you (OPEN BAR with VODKA, TEQUILA, and BEER + FOOD!)</li>
      <li>$10(parking/carpooling is HIGHLY encouraged) </li>
      <li>ID (for the alcohol) </li>
      <li>Bring a blanket if you want </li>
      <li>Don't be shy about inviting your friends!</li>
      </ul>

      <p><strong>Things NOT to bring:</strong></p>
      <ul class='unstyled'>
      <li>NO GLASS</li>
      <li>NO BALLOONS</li>
      <li>NO FIRE ON THE BEACH</li>
      </ul>",
  address: "Venice Blvd, Half Moon Bay, California 94019",
  map_link: "https://maps.google.com/maps?q=Venice+Blvd,+Half+Moon+Bay,+California+94019&hl=en&sll=37.40146,-121.987123&sspn=0.044797,0.088921&hnear=Venice+Blvd,+Half+Moon+Bay,+San+Mateo,+California+94019&t=m&z=16",
  pictures: "http://imageshack.us/a/img846/8936/i76.jpg http://imageshack.us/a/img515/9306/i74m.jpg http://imageshack.us/a/img213/9092/i73i.jpg http://imageshack.us/a/img233/5091/i72p.jpg http://imageshack.us/a/img547/6152/i71n.jpg http://imageshack.us/a/img855/9683/i70b.jpg http://imageshack.us/a/img217/6683/i69c.jpg http://imageshack.us/a/img546/8749/i68m.jpg http://imageshack.us/a/img528/7455/i67e.jpg http://imageshack.us/a/img543/804/i66y.jpg http://imageshack.us/a/img547/2504/i65a.jpg http://imageshack.us/a/img687/1428/i64w.jpg http://imageshack.us/a/img22/2482/i63u.jpg http://imageshack.us/a/img687/1290/i62w.jpg http://imageshack.us/a/img16/7182/i61p.jpg http://imageshack.us/a/img812/9462/i60f.jpg http://imageshack.us/a/img822/5482/i59f.jpg http://imageshack.us/a/img16/3806/i58s.jpg http://imageshack.us/a/img339/4339/i57k.jpg http://imageshack.us/a/img32/6285/i56m.jpg http://imageshack.us/a/img100/162/i55s.jpg http://imageshack.us/a/img703/4969/i53m.jpg http://imageshack.us/a/img689/8998/i52pw.jpg http://imageshack.us/a/img5/9686/i51.jpg http://imageshack.us/a/img521/3084/i50w.jpg http://imageshack.us/a/img11/6042/i49w.jpg http://imageshack.us/a/img571/5398/i48m.jpg http://imageshack.us/a/img39/2974/i47n.jpg http://imageshack.us/a/img651/9461/i46ro.jpg http://imageshack.us/a/img152/4061/i45.jpg http://imageshack.us/a/img856/9743/i44i.jpg http://imageshack.us/a/img203/5034/i42e.jpg http://imageshack.us/a/img651/8234/i41t.jpg http://imageshack.us/a/img38/1832/i40pp.jpg http://imageshack.us/a/img231/3039/i39d.jpg http://imageshack.us/a/img694/4892/i38q.jpg http://imageshack.us/a/img201/8113/i37z.jpg http://imageshack.us/a/img818/2935/i36t.jpg http://imageshack.us/a/img255/4673/i35t.jpg http://imageshack.us/a/img201/7061/i34ii.jpg http://imageshack.us/a/img339/1540/i33y.jpg http://imageshack.us/a/img213/1994/i32a.jpg http://imageshack.us/a/img545/620/i31n.jpg http://imageshack.us/a/img13/3191/i30ao.jpg http://imageshack.us/a/img832/2679/i29z.jpg http://imageshack.us/a/img571/5490/i28i.jpg http://imageshack.us/a/img26/6184/i27v.jpg http://imageshack.us/a/img713/503/i26b.jpg http://imageshack.us/a/img853/2820/i25.jpg http://imageshack.us/a/img835/2685/i24z.jpg http://imageshack.us/a/img90/5796/i23u.jpg http://imageshack.us/a/img203/4497/i22v.jpg http://imageshack.us/a/img24/6865/i21w.jpg http://imageshack.us/a/img15/294/i20r.jpg http://imageshack.us/a/img853/702/i18t.jpg http://imageshack.us/a/img521/4223/i17cg.jpg http://imageshack.us/a/img809/9492/i16k.jpg http://imageshack.us/a/img832/3231/i15j.jpg http://imageshack.us/a/img703/3536/i14u.jpg http://imageshack.us/a/img651/4575/i13t.jpg http://imageshack.us/a/img651/7408/i12e.jpg http://imageshack.us/a/img855/9326/i11g.jpg http://imageshack.us/a/img805/698/i10ru.jpg http://imageshack.us/a/img69/6475/68456793.jpg http://imageshack.us/a/img407/4062/92404798.jpg http://imageshack.us/a/img11/1953/67683114.jpg http://imageshack.us/a/img541/1226/96076090.jpg http://imageshack.us/a/img51/8838/43832372.jpg http://imageshack.us/a/img33/3660/59523467.jpg http://imageshack.us/a/img19/2418/59891047.jpg http://imageshack.us/a/img811/8514/15126962.jpg http://imageshack.us/a/img16/6711/11470917.jpg http://imageshack.us/a/img27/204/71788475.jpg".split()
)

Event.create(
  name: "Komanda Beer Fest",
  price: 15,
  date: "04 Nov 2012",
  time: "11:00",
  flyer: "http://img213.imageshack.us/img213/4701/flyerem.jpg",
  description: "<p><strong>GUESS WHAT?!?!</strong></p>
  <p>It's the most magical time of the year, at least for those of us who love gallons of beer flowing like water: Beerfest! </p>
  <p>Komanda is back to party with you with our own KOMANDA BEERFEST PARTY!!!!!!!!!!!!!!!</p>
  <p>We are all about the music, fun and the spirit! You come here, and you feel it! Let's do it Komanda Style!</p>
  <p>Celebrating with Komanda in the true tradition of famed festival, Oktoberfest, by the Baylands Park in Sunnyvale will include nonstop music with live DJ, dancing and the very best beer and food provided FREE by Komanda! </p>
  <p>We will have Beerpong Tournament and lots of beer games like Flip Cup, Civil War and Boom. </p>
  <p>We will also have Volleyball, Soccer, Football, Ultimate Frisbee!</p>
  <p>PLEASE post it to your social networks, invite colleagues, friends, share in other organizations, just tell people about it so everyone can come and have fun!</p>
  <p>A reserved park just for you, those who love to party and have fun! </p>
  <ul class='unstyled'>
  <li>Donations: $20 per person $15 if 150 people \"Going\".</li>
  <li>RESERVED PARK</li>
  <li>ALL DAY NON-STOP MUSIC</li><li>LOTS OF FOOD (BBQ)</li>
  <li>Drinks to keep you going (Wine, Beer)(21 and up)</li>
  <li>Fun Games/Tournaments BEERPONG TOURNAMENT, Volleyball, Soccer, Football, Flip Cup, Civil War, Boom, Ultimate Frisbee, Komanda Pranks/Challenges!</li>
  </ul>
  <p><strong>Few things to remember:</strong></p>
  <ul class='unstyled'><li>Make sure to bring cash for donations</li>
  <li>20$ gets you (OPEN BAR Wine and BEER + FOOD!)</li><li>ID (for the alcohol)</li>
  <li>Don't be shy about inviting your friends!</li>
  </ul>",
  address: "Baylands Park in Sunnyvale",
  map_link: "https://maps.google.com/maps?q=Baylands+Park,+Sunnyvale,+Santa+Clara,+California+94089&hl=en&ll=37.40146,-121.987123&spn=0.044797,0.088921&sll=37.409574,-122.016735&sspn=0.089584,0.177841&geocode=FUPdOgIdCG66-A&hnear=Baylands+Park,+Sunnyvale,+Santa+Clara,+California+94089&t=m&z=14",
  pictures: "http://imageshack.us/a/img855/2482/i63u.jpg http://imageshack.us/a/img443/2959/i62a.jpg http://imageshack.us/a/img197/245/i61x.jpg http://imageshack.us/a/img208/9462/i60f.jpg http://imageshack.us/a/img62/3766/i59s.jpg http://imageshack.us/a/img42/1442/i58eq.jpg http://imageshack.us/a/img19/8676/i57qb.jpg http://imageshack.us/a/img443/982/i56v.jpg http://imageshack.us/a/img594/8403/i55j.jpg http://imageshack.us/a/img507/3574/i54.jpg http://imageshack.us/a/img72/8711/i53o.jpg http://imageshack.us/a/img203/4074/i52u.jpg http://imageshack.us/a/img831/571/i51b.jpg http://imageshack.us/a/img819/3360/i50h.jpg http://imageshack.us/a/img341/5971/i49j.jpg http://imageshack.us/a/img221/5071/i48y.jpg http://imageshack.us/a/img59/7413/i47a.jpg http://imageshack.us/a/img255/5244/i46p.jpg http://imageshack.us/a/img94/9919/i45e.jpg http://imageshack.us/a/img827/7637/i43t.jpg http://imageshack.us/a/img824/9743/i42d.jpg http://imageshack.us/a/img194/2875/i41rv.jpg http://imageshack.us/a/img834/8462/i40f.jpg http://imageshack.us/a/img9/3039/i39d.jpg http://imageshack.us/a/img713/9402/i38s.jpg http://imageshack.us/a/img545/9029/i37l.jpg http://imageshack.us/a/img855/3531/i36j.jpg http://imageshack.us/a/img9/4977/i35d.jpg http://imageshack.us/a/img51/4479/i34z.jpg http://imageshack.us/a/img341/445/i33lh.jpg http://imageshack.us/a/img38/1171/i31p.jpg http://imageshack.us/a/img713/5826/i29p.jpg http://imageshack.us/a/img600/4093/i28s.jpg http://imageshack.us/a/img69/3580/i27ek.jpg http://imageshack.us/a/img40/9899/i25e.jpg http://imageshack.us/a/img11/1043/i24oz.jpg http://imageshack.us/a/img577/7836/i23p.jpg http://imageshack.us/a/img42/8720/i21xu.jpg http://imageshack.us/a/img195/1894/i20d.jpg http://imageshack.us/a/img834/7692/i19q.jpg http://imageshack.us/a/img59/7595/i17m.jpg http://imageshack.us/a/img22/3750/i16b.jpg http://imageshack.us/a/img201/1184/i15b.jpg http://imageshack.us/a/img89/9789/i14ewl.jpg http://imageshack.us/a/img818/738/i13ny.jpg http://imageshack.us/a/img844/3275/i12tr.jpg http://imageshack.us/a/img401/7898/i11r.jpg http://imageshack.us/a/img405/9716/41499041.jpg http://imageshack.us/a/img152/6601/45244503.jpg http://imageshack.us/a/img687/7927/34214597.jpg http://imageshack.us/a/img594/139/57571158.jpg http://imageshack.us/a/img35/3667/67816334.jpg http://imageshack.us/a/img717/6901/97824972.jpg http://imageshack.us/a/img197/522/46321935.jpg http://imageshack.us/a/img600/9167/15210475.jpg http://imageshack.us/a/img138/3467/54156835.jpg http://imageshack.us/a/img651/6309/78972203.jpg".split()
)

Event.create(
  name: "Komanda Beer Party",
  price: 10,
  date: "20 Dec 2012",
  time: "21:00",
  flyer: "http://img32.imageshack.us/img32/2585/flyervp.jpg",
  description: "<p><strong>Komanda is back to party!</strong></p>
  <p>Free beer for the games, Live DJ and beer games all night!!</p>
  <p>Boom, Flip Cup, Civil War, and Beerpong Tournament with prizes!!
  In addition New York Pizza and wine!!</p>
  <p><strong>Cover $10 which includes free beer for the players (pizza and wine are extra)</strong></p>
  <p>The beerpong tournament is going to start at 10pm, do not be late.
  The amount of teams participating is going to depend on how many people show up. Winners will be awarded with exclusive Komanda T-shirts and pictures of them posted on komanda page!</p>",
  address: "1285 Alameda San Jose, CA",
  map_link: "https://maps.google.com/maps?q=1285+Alameda+San+Jose,+CA&hl=en&sll=37.269174,-119.306607&sspn=11.479299,22.763672&hnear=1285+The+Alameda,+San+Jose,+Santa+Clara,+California+95126&t=m&z=16",
)

printf(" Done!\n")

printf("Creating products... ")

Product.create(
  name: "t-shirt 1",
  price: 25,
  pictures: "http://sphotos-b.xx.fbcdn.net/hphotos-prn1/548081_570358316324031_1563752111_n.jpg http://sphotos-a.xx.fbcdn.net/hphotos-prn1/15426_570358649657331_1818217939_n.jpg"
)

Product.create(
  name: "t-shirt 2",
  price: 20,
  pictures: "http://sphotos-b.xx.fbcdn.net/hphotos-prn1/548081_570358316324031_1563752111_n.jpg http://sphotos-a.xx.fbcdn.net/hphotos-prn1/15426_570358649657331_1818217939_n.jpg"
)

Product.create(
  name: "t-shirt 3",
  price: 35,
  pictures: "http://sphotos-b.xx.fbcdn.net/hphotos-prn1/548081_570358316324031_1563752111_n.jpg http://sphotos-a.xx.fbcdn.net/hphotos-prn1/15426_570358649657331_1818217939_n.jpg"
)

Product.create(
  name: "t-shirt 4",
  price: 25,
  pictures: "http://sphotos-b.xx.fbcdn.net/hphotos-prn1/548081_570358316324031_1563752111_n.jpg http://sphotos-a.xx.fbcdn.net/hphotos-prn1/15426_570358649657331_1818217939_n.jpg"
)

Product.create(
  name: "t-shirt 5",
  price: 25,
  pictures: "http://sphotos-b.xx.fbcdn.net/hphotos-prn1/548081_570358316324031_1563752111_n.jpg http://sphotos-a.xx.fbcdn.net/hphotos-prn1/15426_570358649657331_1818217939_n.jpg"
)

printf("Done!\n")

printf("Fixing \'going\' and \'rating\'...")
Event.each do |event|
  User.each do |user|
    event.join(user, true)
    event.ratings["#{user.id}"] = 5
  end
  event.save
end
printf(" Done!\n\n")
