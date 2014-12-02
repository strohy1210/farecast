# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ARTISTS
Artist.create([{:name => 'The Shadowboxers',:new_album => true}, #sold out (2 shows)
              {:name => 'The 1975',:new_album => false},    #sold out
              {:name => 'tUnE-yArDs',:new_album => true},  # sold out (2 shows in a row)
              {:name => 'Chadwick Stokes',:new_album => false},
              {:name => 'Lucius',:new_album => true},
              {:name => 'Badbadnotgood',:new_album => true}
              ])

Venue.create([{:name => 'Mercury Lounge',:capacity => 300},
              {:name => 'Bowery Ballroom',:capacity => 600},
              {:name => 'Terminal 5',:capacity => 3000},
              {:name => 'Music Hall Williamsburg',:capacity => 550}
            ])

Concert.create([{:artist_id  => 1,
                :venue_id => 1,
                :name => 'The Shadowboxers Show',
                #:spotify_popularity => ,
                :sg_seatgeek_popularity => 39.252
                # :artist_followers => 769,
                # :current_min_price => 57},
                },

              {:artist_id  => 2,
                :venue_id => 3,
                :name => 'The 1975 Show',
                #:spotify_popularity => ,
                :sg_seatgeek_popularity => 57.528
                # :artist_followers => 432540,
                # :current_min_price => 63.00},
                }, 

              {:artist_id  => 3,
                :venue_id => 4,
                :name => 'tUnE-yArDs Show',
                #:spotify_popularity => ,
                :sg_seatgeek_popularity => 52.653
                # :artist_followers => 58485,
                # :current_min_price => 70.00},
                }, 

              {:artist_id  => 4,
                :venue_id => 2,
                :name => 'Chadwick Stokes Show',
                #:spotify_popularity => ,
                :sg_seatgeek_popularity => 31.958
                # :artist_followers => 2722,
                # :current_min_price => 22.00},
                }, 

               {:artist_id  => 5,
                :venue_id => 3,
                :name => 'Lucius Show',
                #:spotify_popularity => ,
                :sg_seatgeek_popularity => 52.532
                # :artist_followers => 30590,
                # :current_min_price => 33.00},
                }, 

               {:artist_id  => 6,
                :venue_id => 2,
                :name => 'Badbadnotgood Show',
                #:spotify_popularity => ,
                :sg_seatgeek_popularity => 20.545
                # :artist_followers => 10898,
                # :current_min_price => 12.00}
                }
            ])