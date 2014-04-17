gyms = []
gyms << Gym.create(name: "Brick Bodies Downtown", street: "218 N Charles St", city: "Baltimore", state: "MD", zip_code: "21201", yelp_id: "brick-bodies-downtown-baltimore-2")
gyms << Gym.create(name: "Straight Blast Gym", street: "5050 Delridge Way SW", city: "Seattle", state: "WA", zip_code: "98106", yelp_id: "straight-blast-gym-seattle")
gyms << Gym.create(name: "Raise The Bar Fitness", street: "2535 Judah St", city: "San Francisco", state: "CA", zip_code: "94122", yelp_id: "raise-the-bar-fitness-san-francisco")
gyms << Gym.create(name: "Get Some Fitness", street: "31119 Greenfield Rd", city: "Beverly Hills", state: "MI", zip_code: "48025", yelp_id: "get-some-fitness-beverly-hills")
gyms << Gym.create(name: "God's Gym", street: "2501 Broadway", city: "Oakland", state: "CA", zip_code: "94612", yelp_id: "gods-gym-oakland")

users = []
users << User.create(email: "Amy1@email.com", password: "backpacks", password_confirmation: "backpacks", name: "Amy", gym_id: gyms.sample.id)
users << User.create(email: "Sophie2@email.com", password: "55monkeys", password_confirmation: "55monkeys", name: "Sophie", gym_id: gyms.sample.id)
users << User.create(email: "Ben3@email.com", password: "25orioles", password_confirmation: "25orioles", name: "Ben", gym_id: gyms.sample.id)
users << User.create(email: "Jon4@email.com", password: "babboons", password_confirmation: "babboons", name: "Jon", gym_id: gyms.sample.id)
users << User.create(email: "Naomi5@email.com", password: "butterflies", password_confirmation: "butterflies", name: "Naomi", gym_id: gyms.sample.id)
users << User.create(email: "George6@email.com", password: "Machiavellianism", password_confirmation: "Machiavellianism", name: "George", gym_id: gyms.sample.id)
users << User.create(email: "Leo7@email.com", password: "abominable", password_confirmation: "abominable", name: "Leo", gym_id: gyms.sample.id)
users << User.create(email: "Norma8@email.com", password: "acoutrements", password_confirmation: "acoutrements", name: "Norma", gym_id: gyms.sample.id)
users << User.create(email: "Anna9@email.com", password: "amalgamate", password_confirmation: "amalgamate", name: "Anna", gym_id: gyms.sample.id)
users << User.create(email: "William1@email.com", password: "borborygmus", password_confirmation: "borborygmus", name: "William", gym_id: gyms.sample.id)
users << User.create(email: "Lorna2@email.com", password: "chauvinistic", password_confirmation: "chauvinistic", name: "Lorna", gym_id: gyms.sample.id)
users << User.create(email: "Mitch3@email.com", password: "clandestine", password_confirmation: "clandestine", name: "Mitch", gym_id: gyms.sample.id)
users << User.create(email: "Karen4@email.com", password: "connoisseur", password_confirmation: "connoisseur", name: "Karen", gym_id: gyms.sample.id)
users << User.create(email: "Buddy5@email.com", password: "diaphanous", password_confirmation: "diaphanous", name: "Buddy", gym_id: gyms.sample.id)
users << User.create(email: "Louis6@email.com", password: "dodecahedron", password_confirmation: "dodecahedron", name: "Louis", gym_id: gyms.sample.id)
users << User.create(email: "Esther7@email.com", password: "flibbertigibbet", password_confirmation: "flibbertigibbet", name: "Esther", gym_id: gyms.sample.id)
users << User.create(email: "Diana8@email.com", password: "gallivant", password_confirmation: "gallivant", name: "Diana", gym_id: gyms.sample.id)
users << User.create(email: "Rebecca9@email.com", password: "gesticulate", password_confirmation: "gesticulate", name: "Rebecca", gym_id: gyms.sample.id)
users << User.create(email: "David0@email.com", password: "grandiloquent", password_confirmation: "grandiloquent", name: "David", gym_id: gyms.sample.id)
users << User.create(email: "Paula0@email.com", password: "hullabaloo", password_confirmation: "hullabaloo", name: "Paula", gym_id: gyms.sample.id)

availabilities = []
availabilities << Availability.create(day: "Monday", time: "2000-01-01 06:30:00")
availabilities << Availability.create(day: "Tuesday", time: "2000-01-01 07:30:00")
availabilities << Availability.create(day: "Wednesday", time: "2000-01-01 07:30:00")
availabilities << Availability.create(day: "Thursday", time: "2000-01-01 09:30:00")
availabilities << Availability.create(day: "Friday", time: "2000-01-01 10:30:00")
availabilities << Availability.create(day: "Saturday", time: "2000-01-01 11:30:00")
availabilities << Availability.create(day: "Sunday", time: "2000-01-01 06:0:00")
availabilities << Availability.create(day: "Monday", time: "2000-01-01 07:0:00")
availabilities << Availability.create(day: "Tuesday", time: "2000-01-01 04:00:00")
availabilities << Availability.create(day: "Wednesday", time: "2000-01-01 15:30:00")
availabilities << Availability.create(day: "Thursday", time: "2000-01-01 16:30:00")
availabilities << Availability.create(day: "Friday", time: "2000-01-01 17:30:00")
availabilities << Availability.create(day: "Saturday", time: "2000-01-01 18:30:00")
availabilities << Availability.create(day: "Sunday", time: "2000-01-01 19:30:00")

availabilities [0].users << users[0]
availabilities [0].users << users[1]
availabilities [0].users << users[2]

availabilities  [1].users << users[2]
availabilities  [1].users << users[3]
availabilities  [1].users << users[4]
availabilities  [1].users << users[5]

availabilities [2].users << users[3]
availabilities [2].users << users[4]
availabilities[2].users << users[5]
availabilities[2].users << users[6]
availabilities[2].users << users[7]
availabilities[2].users << users[8]

availabilities[3].users << users[8]
availabilities[3].users << users[9]

availabilities[4].users << users[9]
availabilities[4].users << users[10]

availabilities[5].users << users[11]
availabilities[5].users << users[12]
availabilities[5].users << users[13]
availabilities[5].users << users[14]
availabilities[5].users << users[15]
availabilities[5].users << users[16]

availabilities[6].users << users[16]
availabilities[6].users << users[17]
availabilities[6].users << users[18]

availabilities[7].users << users[18]
availabilities[7].users << users[19]
availabilities[7].users << users[0]

availabilities[8].users << users[0]
availabilities[8].users << users[1]

availabilities[9].users << users[1]
availabilities[9].users << users[2]

availabilities[10].users << users[2]
availabilities[10].users << users[3]
availabilities[10].users << users[4]
availabilities[10].users << users[5]
availabilities[10].users << users[6]
availabilities[10].users << users[7]

availabilities[11].users << users[7]
availabilities[11].users << users[8]
availabilities[11].users << users[9]

availabilities[12].users << users[10]
availabilities[12].users << users[11]
availabilities[12].users << users[12]
availabilities[12].users << users[13]

availabilities[13].users << users[14]
availabilities[13].users << users[15]
availabilities[13].users << users[16]
availabilities[13].users << users[17]
availabilities[13].users << users[18]
availabilities[13].users << users[19]