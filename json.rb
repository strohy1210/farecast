require 'json'

hash = JSON.parse([
      {
        "dow": "Tue",
        "date": "12.2",
        "artist": "Coastgaard",
        "venue": "Glasslands Gallery",
        "price": "$10.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Wed",
        "date": "12.3",
        "artist": "Chrome Canyon",
        "venue": "Glasslands Gallery",
        "price": "$12.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Thu",
        "date": "12.4",
        "artist": "TEEN, Beverly",
        "venue": "Glasslands Gallery",
        "price": "$12.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Fri",
        "date": "12.5",
        "artist": "The Blow",
        "venue": "Glasslands Gallery",
        "price": "$12.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Fri",
        "date": "12.5",
        "artist": "Lemonade & Tim and Ben of Cut Copy (Tag Team DJ set)",
        "venue": "Glasslands Gallery",
        "price": "$15.00 - $20.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Sat",
        "date": "12.6",
        "artist": "Peelander-Z!",
        "venue": "Glasslands Gallery",
        "price": "$12.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Sat",
        "date": "12.6",
        "artist": "CHERYL: Nail in the Coffin",
        "venue": "Glasslands Gallery",
        "price": "$10",
        "property7": "Tickets at the Door"
      },
      {
        "dow": "Sun",
        "date": "12.7",
        "artist": "Neighbors",
        "venue": "Glasslands Gallery",
        "price": "$10.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Mon",
        "date": "12.8",
        "artist": "Yellow Ostrich (Final Show!)",
        "venue": "Glasslands Gallery",
        "price": "$15.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Tue",
        "date": "12.9",
        "artist": "Jana Hunter of Lower Dens",
        "venue": "Glasslands Gallery",
        "price": "$10.00 - $12.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Wed",
        "date": "12.10",
        "artist": "Waxahatchee",
        "venue": "Glasslands Gallery",
        "price": "$14.00 - $16.00",
        "property7": "Sold Out"
      },
      {
        "dow": "Thu",
        "date": "12.11",
        "artist": "Suckers",
        "venue": "Glasslands Gallery",
        "price": "$12.00 - $14.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Fri",
        "date": "12.12",
        "artist": "Bear Hands",
        "venue": "Glasslands Gallery",
        "price": "$15.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Fri",
        "date": "12.12",
        "artist": "Penguin Prison (DJ Set w/ Live Vocals)",
        "venue": "Glasslands Gallery",
        "price": "$15.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Sat",
        "date": "12.13",
        "artist": "Computer Magic",
        "venue": "Glasslands Gallery",
        "price": "$10.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Sat",
        "date": "12.13",
        "artist": "Kissy Sell Out",
        "venue": "Glasslands Gallery",
        "price": "$12.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Sun",
        "date": "12.14",
        "artist": "Crocodiles",
        "venue": "Glasslands Gallery",
        "price": "$10.00 - $12.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Tue",
        "date": "12.16",
        "artist": "How To Dress Well",
        "venue": "Glasslands Gallery",
        "price": "$22.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Wed",
        "date": "12.17",
        "artist": "Beach Fossils",
        "venue": "Glasslands Gallery",
        "price": "$20.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Thu",
        "date": "12.18",
        "artist": "Delicate Steve",
        "venue": "Glasslands Gallery",
        "price": "$12.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Thu",
        "date": "12.18",
        "artist": "Let's Play House with..., The Black Madonna",
        "venue": "Glasslands Gallery",
        "price": "$15.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Fri",
        "date": "12.19",
        "artist": "TK Wonder, Kissey",
        "venue": "Glasslands Gallery",
        "price": "$10.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Fri",
        "date": "12.19",
        "artist": "Adventure[s] presents:, #RIPGlasslands / #Glasslands4Ever",
        "venue": "Glasslands Gallery",
        "price": "$5.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Sat",
        "date": "12.20",
        "artist": "Widowspeak",
        "venue": "Glasslands Gallery",
        "price": "$12.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Sat",
        "date": "12.20",
        "artist": "Com Truise",
        "venue": "Glasslands Gallery",
        "price": "$15.00 - $17.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Sun",
        "date": "12.21",
        "artist": "Dave Harrington & Friends Holiday Spectacular!",
        "venue": "Glasslands Gallery",
        "price": "$10.00 - $12.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Fri",
        "date": "12.26",
        "artist": "Ducktails",
        "venue": "Glasslands Gallery",
        "price": "$12.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Fri",
        "date": "12.26",
        "artist": "Bit Funk",
        "venue": "Glasslands Gallery",
        "price": "$12.00 - $15.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Sat",
        "date": "12.27",
        "artist": "Fiasco",
        "venue": "Glasslands Gallery",
        "price": "$10.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Sat",
        "date": "12.27",
        "artist": "Chrome Sparks (DJ Set), Kitty",
        "venue": "Glasslands Gallery",
        "price": "$10.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Sun",
        "date": "12.28",
        "artist": "Bass Drum Of Death",
        "venue": "Glasslands Gallery",
        "price": "$15.00",
        "property7": "Get Tickets"
      },
      {
        "dow": "Mon",
        "date": "12.29",
        "artist": "TR/ST",
        "venue": "Glasslands Gallery",
        "price": "$20.00 - $25.00",
        "property7": "Get Tickets"
      }
    ])
binding.pry