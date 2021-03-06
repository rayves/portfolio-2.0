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
  'personal_portfolio_website/cover/screen1.png',
  'personal_portfolio_website/other/screen2.png',
  'personal_portfolio_website/other/screen3.png',
  'personal_portfolio_website/other/screen4.png',
  'personal_portfolio_website/other/screen5.png',
  'feed_me/cover/screen1.png',
  'feed_me/other/screen2.png',
  'feed_me/other/screen3.png',
  'feed_me/other/screen4.png',
  'feed_me/other/screen5.png',
  'roastxpress/cover/screen1.png',
  'roastxpress/other/screen2.png',
  'roastxpress/other/screen3.png',
  'roastxpress/other/screen4.png',
  'roastxpress/other/screen5.png'
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
    icon: 'devicon-sass-original' },
  { name: 'postgresql',
    icon: 'devicon-postgresql-plain' },
  { name: 'boostrap',
    icon: 'devicon-bootstrap-plain' },
  { name: 'heroku',
    icon: 'devicon-heroku-original' },
  { name: 'amazon_web_services',
    icon: 'devicon-amazonwebservices-original' },
  { name: 'stripe',
    icon: 'fa-brands fa-stripe' }
]

projects = [
  {
    name: 'Personal Portfolio Website',
    description: 'Website developed using pure HTML and CSS/Sass to highlight who I am and what projects I have in my portfolio. The aim of the website is to impress potential employers with the displayed portfolio.',
    link: 'github.com/rayves/myportfolio',
    cover_path: assets[0],
    asset_id: [2, 3, 4, 5],
    technology_id: [2, 3, 5, 7]
  },
  {
    name: 'Feed Me!',
    description: 'Command line application that is an easy-to-use point-of-sale program for the fictional fast-food restaurant ???Feed Me!???',
    link: 'github.com/rayves/Feed-Me-terminal-application',
    cover_path: assets[5],
    asset_id: [7, 8, 9, 10],
    technology_id: [1]
  },
  {
    name: 'roastXpress',
    description: 'A simple two-way marketplace app between coffee buyers and suppliers that is easy to use. The site will allow suppliers/sellers an effective way to display their roastedcoffee to sell and for potential buyers to be able browse and purchase from the marketplace.',
    link: 'github.com/rayves/roastXpress',
    cover_path: assets[10],
    asset_id: [12, 13, 14, 15],
    technology_id: [2, 3, 7, 9, 1, 4, 8, 11, 12, 10]
  },
  {
    name: 'Portfolio 2.0',
    description: 'A recreation of my first portfolio project which I only used html and css, now using Ruby on Rails',
    link: 'github.com/rayves/portfolio-2.0',
    technology_id: [2, 3, 5, 7, 1, 4, 8, 10]
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
      cover_path: project[:cover_path],
      asset_ids: project[:asset_id],
      technology_ids: project[:technology_id]
    )
    puts "Project #{project[:name]} created successfully"
  end
end

puts '***************'
puts 'SET UP COMPLETE'
puts '***************'
