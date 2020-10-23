users = [
    {
      name: 'Drew',
      age: 25,
      address: 'San Diego, CA',
      email: 'drew@email.com'
    },
    {
      name: 'Matt',
      age: 31,
      address: 'San Diego, CA',
      email: 'matt@email.com'
    },
    {
      name: 'Nate',
      age: 26,
      address: 'San Diego, CA',
      email: 'nate@email.com'
    }
  ]

  users.each do |attributes|
      User.create attributes
      puts `creating pet #{attributes}`
  end

  pets = [
{
id: 1,
name: 'Mittens',
age: 5,
species: 'Cat',
breed: 'Short-Haired',
enjoys: 'sunshine and warm spots'
},
{
id: 2,
name: 'Raisins',
age: 4,
species: 'Cat',
breed: 'Flat-Faced',
enjoys: 'scaring the dogs'
},
{
id: 3,
name: 'Toast',
age: 1,
species: 'Dog',
breed: 'Poodle',
enjoys: 'getting all the attention'
}
]
pets.each do |attributes|
    Pet.create attributes
    puts `creating pet #{attributes}`
end
