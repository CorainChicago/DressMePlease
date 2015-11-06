Quirk.create([
  {quote: "Vain trifles as they seem, clothes have, they say, more important offices than to merely keep us warm. They change our view of the world and the worlds view of us. - Virginia Woolf", weekday: "Monday"},
  {quote: "You cannot fake chic but you﻿ can be chic and fake fur. - Karl Lagerfeld", weekday: "Monday"},
    {quote: "Style is when theyre running you out of town and you make it look like youre leading the parade. - William Battie", weekday: "Tuesday"},
    {quote: "Theres no such thing as bad weather, only unsuitable clothing. - Alfred Wainwright", weekday: "Tuesday"},
    {quote: "Dont knock the weather, nine-tenths of the people couldnt start a conversation if it didnt change once in a while. - Kin Hubbard", weekday: "Wednesday"},
    {quote: "Ive lived in good climate, and it bores the hell out of me. I like weather rather than climate. - John Steinbeck (1902 - 1968)", weekday: "Wednesday"},
      {quote: "There is really no such thing as bad weather, only different kinds of good weather. - John Ruskin (1819 - 1900)", weekday: "Thursday"},
      {quote: "What dreadful hot weather we have! It keeps me in a continual state of inelegance. - Jane Austen (1775 - 1817)", weekday: "Thursday"},
      {quote: "I base most of my fashion sense on what doesnt itch. - Gilda Radner", weekday: "Friday"},
      {quote: "Distrust any enterprise that requires new clothes. - Henry David Thoreau, Walden", weekday: "Friday"},
      {quote: "When in doubt, wear red. - Bill Blass", weekday: "Saturday"},
      {quote: "Be careless in your dress if you will, but keep a tidy soul. - Mark Twain", weekday: "Saturday"},
      {quote: "Never wear anything that panics the cat. - P.J. ORourke", weekday: "Sunday"},
      {quote: "If the temperature is less than my age I dont get out of bed said Ellen ", weekday: "Sunday"},
  ])


@charlie = User.create(first_name: "Charlie", last_name: "Bear", email: "cat@cat.com", password: "password")

 Preference.create(temp_coat: 35, temp_jacket: "65", precipitation_probability_umbrella: 0.3, wind_speed_ponytail: 30, temp_hat: 45, precipitation_intensity_golashes: 0.1, cloud_coverage_sunglasses: 0.4, humidity_hair: 0.4, humitdity_short_sleeves: 0.6, user_id: @charlie.id)























