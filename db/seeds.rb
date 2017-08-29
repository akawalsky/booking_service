Guest.create!(first_name: 'Aaron', last_name: 'Kawalsky', email: 'kawalsky.aaron@gmail.com')
Guest.create!(first_name: 'Jared', last_name: 'Saks', email: 'jaredmsaks@gmail.com')
Guest.create!(first_name: 'Brennan', last_name: 'Spellacy', email: 'brennan.spellacy@sonder.com')

Location.create!(
  name: 'Fleur-De-Lis Estates, Apt. 1',
  description: 'Beautiful two bedroom apartment by the ocean',
  address_1: '7211 Wahaki Rd',
  city: 'Honolulu',
  state: 'Hawaii',
  zip: '96795'
)

Location.create!(
  name: 'Ugly Old Condos, Apt. 2',
  description: 'This place is trash.',
  address_1: '5287 Loogi Rd',
  city: 'Honolulu',
  state: 'Hawaii',
  zip: '96795'
)
