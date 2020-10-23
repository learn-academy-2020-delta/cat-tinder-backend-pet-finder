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
    },
    {

        id: 4,
        name: "Benny",
        age: 10,
        species: "Dog",
        breed: "Husky",
        enjoys: "scaring the cats"
    },
    {

        id: 5,
        name: "Tash",
        age: 1,
        species: "Cat",
        breed: "Calico",
        enjoys: "purrin and stuff"
    },
    {

        id: 6,
        name: "Steven",
        age: 1,
        species: "Dog",
        breed: "Chihuahua",
        enjoys: "Seeing out of one eye"
    }
    ]   
    
    pets.each do |attributes|
        Pet.create attributes
    end
