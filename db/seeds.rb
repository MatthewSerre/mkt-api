require 'csv'

# session = GoogleDrive::Session.from_service_account_key("mktapi-f8cb2bd1662d.json")
session = GoogleDrive::Session.from_service_account_key(StringIO.new(ENV['SECRET_JSON']))

drivers_file = session.file_by_title("drivers")
drivers_file.export_as_file(Rails.root.join('lib', 'seeds', 'drivers.csv'))

csv_text = File.read(Rails.root.join('lib', 'seeds', 'drivers.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
    begin
        d = Driver.find_or_create_by(name: row['name'])
        d.position = row['position']
        d.rarity = row['rarity']
        d.special_skill = row['special_skill']
        # if !row['favorite_courses_base'].nil?
        #     fcb = row['favorite_courses_base']
        #     fcba = fcb.split(/\s*,\s*/)
        #     fcba.each do |course|
        #         if !d.favorite_courses_base.include?(course.name)
        #             d.favorite_courses_base.push(course)
        #         end
        #     end
        #     d.favorite_courses_base.sort!
        # end
        # if !row['favorite_courses_level_3'].nil?
        #     fcl3 = row['favorite_courses_level_3']
        #     fcl3a = fcl3.split(/\s*,\s*/)
        #     fcl3a.each do |course|
        #         if !d.favorite_courses_level_3.include?(course.name)
        #             d.favorite_courses_level_3.push(course)
        #         end
        #     end
        #     d.favorite_courses_level_3.sort!
        # end
        # if !row['favorite_courses_level_6'].nil?
        #     fcl6 = row['favorite_courses_level_6']
        #     fcl6a = fcl6.split(/\s*,\s*/)
        #     fcl6a.each do |course|
        #         if !d.favorite_courses_level_6.include?(course.name)
        #             d.favorite_courses_level_6.push(course)
        #         end
        #     end
        #     d.favorite_courses_level_6.sort!
        # end
        # if !row['favored_courses'].nil?
        #     fc = row['favored_courses']
        #     fc = fc.split(/\s*,\s*/)
        #     fc.each do |course|
        #         if !d.favored_courses.include?(course.name)
        #             d.favored_courses.push(course)
        #         end
        #     end
        #     d.favored_courses.sort!
        # end
        d.debut_tour = row['debut_tour']
        d.date_added = row['date_added']
        d.extended_tongue = row['extended_tongue']
        d.horns = row['horns']
        d.mustache = row['mustache']
        d.shell = row['shell']
        d.three_hairs = row['three_hairs']
        d.baby = row['baby']
        d.daily_select = row['daily_select']
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
        d.save
        puts "#{d.name} saved."
    rescue => e
        puts "#{e.class.name}: #{e.message}"
    end
end

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'karts.csv'))
# csv = CSV.parse(csv_text.scrub, headers: true)
# csv.each do |row|
#     begin
#         k = Kart.find_or_create_by(name: row['name'])
#         k.position = row['position']
#         k.rarity = row['rarity']
#         k.special_skill = row['special_skill']
#         # k.favorite_courses_base = !row['favorite_courses_base'].nil? ? row['favorite_courses_base'].split(/\s*,\s*/) : []
#         # k.favorite_courses_level_3 = !row['favorite_courses_level_3'].nil? ? row['favorite_courses_level_3'].split(/\s*,\s*/) : []
#         # k.favorite_courses_level_6 = !row['favorite_courses_level_6'].nil? ? row['favorite_courses_level_6'].split(/\s*,\s*/) : []
#         # k.favored_courses = !row['favored_courses'].nil? ? row['favored_courses'].split(/\s*,\s*/) : []
#         k.debut_tour = row['debut_tour']
#         k.date_added = row['date_added']
#         k.save
#         puts "#{k.name} saved."
#     rescue => e
#         puts "#{e.class.name}: #{e.message}"
#     end
# end

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'gliders.csv'))
# csv = CSV.parse(csv_text.scrub, headers: true)
# csv.each do |row|
#     begin
#         g = Glider.find_or_create_by(name: row['name'])
#         g.position = row['position']
#         g.rarity = row['rarity']
#         g.special_skill = row['special_skill']
#         # g.favorite_courses_base = !row['favorite_courses_base'].nil? ? row['favorite_courses_base'].split(/\s*,\s*/) : []
#         # g.favorite_courses_level_3 = !row['favorite_courses_level_3'].nil? ? row['favorite_courses_level_3'].split(/\s*,\s*/) : []
#         # g.favorite_courses_level_6 = !row['favorite_courses_level_6'].nil? ? row['favorite_courses_level_6'].split(/\s*,\s*/) : []
#         # g.favored_courses = !row['favored_courses'].nil? ? row['favored_courses'].split(/\s*,\s*/) : []
#         g.debut_tour = row['debut_tour']
#         g.date_added = row['date_added']
#         g.save
#         puts "#{g.name} saved."
#     rescue => e
#         puts "#{e.class.name}: #{e.message}"
#     end
# end

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'courses.csv'))
# csv = CSV.parse(csv_text.scrub, headers: true)
# csv.each do |row|
#     if /\d+$/.match?(row['name'])
#         name = row['name'] + row['suffix'].to_s
#     else
#         name = row['name'] + ' ' + row['suffix'].to_s
#     end
#     name.strip!
#     begin
#         c = Course.find_or_create_by(name: name)
#         # c.top_shelf_drivers_base = !row['top_shelf_drivers_base'].nil? ? row['top_shelf_drivers_base'].split(/\s*,\s*/) : []
#         # c.top_shelf_drivers_level_3 = !row['top_shelf_drivers_level_3'].nil? ? row['top_shelf_drivers_level_3'].split(/\s*,\s*/) : []
#         # c.top_shelf_drivers_level_6 = !row['top_shelf_drivers_level_6'].nil? ? row['top_shelf_drivers_level_6'].split(/\s*,\s*/) : []
#         # c.mid_shelf_drivers =  = !row['mid_shelf_drivers'].nil? ? row['mid_shelf_drivers'].split(/\s*,\s*/) : []
#         c.debut_tour = row['debut_tour']
#         c.date_added = row['date_added']
#         c.debut_game = row['debut_game']
#         c.debut_system = row['debut_system']
#         c.is_reverse = row['is_reverse']
#         c.is_trick = row['is_trick']
#         c.save
#         puts "#{c.name} saved."
#     rescue => e
#         puts "#{e.class.name}: #{e.message}"
#     end
# end