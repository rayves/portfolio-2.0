# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Clean database and reset id sequence to 1
ProjectsAsset.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('projects_assets')
ProjectsTechnology.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('projects_technologies')
Asset.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('assets')
Technology.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('technologies')
Project.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('projects')

assets = [
  'chips.jpg',
  'hack.jpg',
  'photograph.PNG'
]

technologies = [
  { name: 'ruby',
    icon: 'devicon-ruby-plain' },
  { name: 'html',
    icon: 'devicon-html5-plain' },
  { name: 'css',
    icon: 'devicon-css3-plain' },
  { name: 'rails',
    icon: 'devicon-rails-plain' },
  { name: 'javascript',
    icon: 'devicon-javascript-plain' },
  { name: 'react',
    icon: 'devicon-react-original' },
  { name: 'sass',
    icon: 'devicon-sass-original' }
]

projects = [
  {
    name: 'personal portfolio website',
    description: 'Website developed using pure HTML and CSS/Sass to highlight who I am and what projects I have in my portfolio. The aim of the website is to impress potential employers with the displayed portfolio.',
    link: 'github.com/rayves/myportfolio',
    asset_id: [1, 2],
    technology_id: [2, 3, 5, 7]
  },
  {
    name: 'feed me',
    description: 'Command line application that is an easy-to-use point-of-sale program for the fictional fast-food restaurant “Feed Me!”',
    link: 'github.com/rayves/Feed-Me-terminal-application',
    technology_id: [1]
  },
  {
    name: 'roastxpress',
    description: 'A simple two-way marketplace app between coffee buyers and suppliers that is easy to use. The site will allow suppliers/sellers an effective way to display their roastedcoffee to sell and for potential buyers to be able browse and purchase from the marketplace.',
    link: 'github.com/rayves/roastXpress',
    asset_id: [3],
    technology_id: [1, 2, 3, 4, 5, 7]
  }
]

if Asset.count == 0
  assets.each do |asset|
    Asset.create(path: asset)
    puts 'Asset generated successfully'
  end
end

if Technology.count == 0
  technologies.each do |tech|
    Technology.create(
      name: tech[:name],
      icon: tech[:icon]
    )
    puts "#{tech[:name]} generated successfully"
  end
end

if Project.count == 0
  projects.each do |project|
    Project.create(
      name: project[:name],
      description: project[:description],
      link: project[:link],
      asset_ids: project[:asset_id],
      technology_ids: project[:technology_id]
    )
    puts "Project #{project[:name]} created successfully"
  end
end

puts '***************'
puts 'SET UP COMPLETE'
puts '***************'
