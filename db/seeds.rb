# Seed a DB with some fake stories
picsum_url = 'https://picsum.photos/seed/picsum/200'

stories = [
  { title: 'Mo', image: picsum_url, content: 'Hello World' },
  { title: 'Fabien', image: picsum_url, content: 'Hello Python' },
  { title: 'Brian', image: picsum_url, content: 'Hello JS' },
  { title: 'Forrest', image: picsum_url, content: 'Hello Rails' }
]
Story.create(stories)

puts 'seeding finished'
