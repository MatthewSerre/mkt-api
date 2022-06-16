# frozen_string_literal: true

require 'csv'

# session = GoogleDrive::Session.from_service_account_key("mktapi-f8cb2bd1662d.json")
# session = GoogleDrive::Session.from_service_account_key(StringIO.new(ENV['SECRET_JSON']))

# drivers_file = session.file_by_title("drivers")
# drivers_file.export_as_file(Rails.root.join('lib', 'seeds', 'drivers.csv'))
drivers_text = File.read(Rails.root.join('lib', 'seeds', 'drivers.csv'))
drivers_csv = CSV.parse(drivers_text.scrub, headers: true)
drivers_csv.each do |row|
  d = Driver.find_or_create_by(name: row['name'])
  d.position = row['position']
  d.rarity = row['rarity']
  d.special_skill = row['special_skill']
  d.debut_tour = row['debut_tour']
  d.date_added = row['date_added']
  d.extended_tongue = row['extended_tongue']
  d.horns = row['horns']
  d.mustache = row['mustache']
  d.shell = row['shell']
  d.three_hairs = row['three_hairs']
  d.baby = row['baby']
  d.kong = row['kong']
  d.koopaling = row['koopaling']
  d.crown = row['crown']
  d.dress = row['dress']
  d.earrings = row['earrings']
  d.gloves = row['gloves']
  d.hat = row['hat']
  d.helmet = row['helmet']
  d.ribbon = row['ribbon']
  d.short_sleeves = row['short_sleeves']
  d.tie = row['tie']
  d.is_daily_select = row['is_daily_select']
  d.is_in_pipes = row['is_in_pipes']
  d.save
  puts "#{d.name} saved."
rescue StandardError => e
  puts "#{e.class.name}: #{e.message}"
end

karts_text = File.read(Rails.root.join('lib', 'seeds', 'karts.csv'))
karts_csv = CSV.parse(karts_text.scrub, headers: true)
karts_csv.each do |row|
  k = Kart.find_or_create_by(name: row['name'])
  k.position = row['position']
  k.rarity = row['rarity']
  k.special_skill = row['special_skill']
  k.debut_tour = row['debut_tour']
  k.date_added = row['date_added']
  k.save
  puts "#{k.name} saved."
rescue StandardError => e
  puts "#{e.class.name}: #{e.message}"
end

# gliders_text = File.read(Rails.root.join('lib', 'seeds', 'gliders.csv'))
# gliders_csv = CSV.parse(gliders_text.scrub, headers: true)
# gliders_csv.each do |row|
#     begin
#         g = Glider.find_or_create_by(name: row['name'])
#         g.position = row['position']
#         g.rarity = row['rarity']
#         g.special_skill = row['special_skill']
#         g.debut_tour = row['debut_tour']
#         g.date_added = row['date_added']
#         g.save
#         puts "#{g.name} saved."
#     rescue => e
#         puts "#{e.class.name}: #{e.message}"
#     end
# end

courses_text = File.read(Rails.root.join('lib', 'seeds', 'courses.csv'))
courses_csv = CSV.parse(courses_text.scrub, headers: true)
courses_csv.each do |row|
  name = if /\d+$/.match?(row['name'])
           row['name'] + row['suffix'].to_s
         else
           "#{row['name']} #{row['suffix']}"
         end
  name.strip
  begin
    c = Course.find_or_create_by(name: name)
    c.debut_tour = row['debut_tour']
    c.date_added = row['date_added']
    c.debut_game = row['debut_game']
    c.debut_system = row['debut_system']
    c.is_reverse = row['is_reverse']
    c.is_trick = row['is_trick']
    c.save
    puts "#{c.name} saved."
  rescue StandardError => e
    puts "#{e.class.name}: #{e.message}"
  end
end

drivers_csv.each do |row|
  d = Driver.find_by(name: row['name'])
  begin
    unless row['level_one_favorite_courses'].blank?
      row['level_one_favorite_courses'].split(/\s*,\s*/).each do |course|
        c = Course.find_by(name: course)
        CourseDriverConnection.create(course: c, driver: d, level: 1)
        puts "Connection established between #{d.name} and #{c.name}."
      rescue StandardError => e
        puts "Error establishing connection between #{d.name} and #{course}. #{e.class.name}: #{e.message}"
      end
    end
    # unless row['level_three_favorite_courses'].blank?
    #   row['level_three_favorite_courses'].split(/\s*,\s*/).each do |course|
    #     c = Course.find_by(name: course)
    #     d.level_three_favorite_courses << c unless d.level_three_favorite_courses.include?(c)
    #     puts "Connection established between #{d.name} and #{c.name}."
    #   rescue StandardError => e
    #     puts "Error establishing connection between #{d.name} and #{course}. #{e.class.name}: #{e.message}"
    #   end
    # end
    # unless row['level_six_favorite_courses'].blank?
    #   row['level_six_favorite_courses'].split(/\s*,\s*/).each do |course|
    #     c = Course.find_by(name: course)
    #     d.level_six_favorite_courses << c unless d.level_six_favorite_courses.include?(c)
    #     puts "Connection established between #{d.name} and #{c.name}."
    #   rescue StandardError => e
    #     puts "Error establishing connection between #{d.name} and #{course}. #{e.class.name}: #{e.message}"
    #   end
    # end
  rescue StandardError => e
    puts "#{e.class.name}: #{e.message}"
  end
end

# karts_csv.each do |row|
#     k = Kart.find_by(name: row['name'])
#     begin
#         unless row['level_one_favorite_courses'].blank?
#             row['level_one_favorite_courses'].split(/\s*,\s*/).each do |course|
#                 begin
#                     c = Course.find_by(name: course)
#                     k.level_one_favorite_courses << c unless k.level_one_favorite_courses.include?(c)
#                     puts "Connection established between #{k.name} and #{c.name}."
#                 rescue => e
#                     puts "Error establishing connection between #{k.name} and #{course}. #{e.class.name}: #{e.message}"
#                 end
#             end
#         end
#         unless row['level_three_favorite_courses'].blank?
#             row['level_three_favorite_courses'].split(/\s*,\s*/).each do |course|
#                 begin
#                     c = Course.find_by(name: course)
#                     k.level_three_favorite_courses << c unless k.level_three_favorite_courses.include?(c)
#                     puts "Connection established between #{k.name} and #{c.name}."
#                 rescue => e
#                     puts "Error establishing connection between #{k.name} and #{course}. #{e.class.name}: #{e.message}"
#                 end
#             end
#         end
#         unless row['level_six_favorite_courses'].blank?
#             row['level_six_favorite_courses'].split(/\s*,\s*/).each do |course|
#                 begin
#                     c = Course.find_by(name: course)
#                     k.level_six_favorite_courses << c unless k.level_six_favorite_courses.include?(c)
#                     puts "Connection established between #{k.name} and #{c.name}."
#                 rescue => e
#                     puts "Error establishing connection between #{k.name} and #{course}. #{e.class.name}: #{e.message}"
#                 end
#             end
#         end
#     rescue => e
#         puts "#{e.class.name}: #{e.message}"
#     end
# end

# gliders_csv.each do |row|
#     g = Glider.find_by(name: row['name'])
#     begin
#         unless row['level_one_favorite_courses'].blank?
#             row['level_one_favorite_courses'].split(/\s*,\s*/).each do |course|
#                 begin
#                     c = Course.find_by(name: course)
#                     g.level_one_favorite_courses << c unless g.level_one_favorite_courses.include?(c)
#                     puts "Connection established between #{g.name} and #{c.name}."
#                 rescue => e
#                     puts "Error establishing connection between #{g.name} and #{course}. #{e.class.name}: #{e.message}"
#                 end
#             end
#         end
#         unless row['level_three_favorite_courses'].blank?
#             row['level_three_favorite_courses'].split(/\s*,\s*/).each do |course|
#                 begin
#                     c = Course.find_by(name: course)
#                     g.level_three_favorite_courses << c unless g.level_three_favorite_courses.include?(c)
#                     puts "Connection established between #{g.name} and #{c.name}."
#                 rescue => e
#                     puts "Error establishing connection between #{g.name} and #{course}. #{e.class.name}: #{e.message}"
#                 end
#             end
#         end
#         unless row['level_six_favorite_courses'].blank?
#             row['level_six_favorite_courses'].split(/\s*,\s*/).each do |course|
#                 begin
#                     c = Course.find_by(name: course)
#                     g.level_six_favorite_courses << c unless g.level_six_favorite_courses.include?(c)
#                     puts "Connection established between #{g.name} and #{c.name}."
#                 rescue => e
#                     puts "Error establishing connection between #{g.name} and #{course}. #{e.class.name}: #{e.message}"
#                 end
#             end
#         end
#     rescue => e
#         puts "#{e.class.name}: #{e.message}"
#     end
# end

puts 'Seeding complete.'
