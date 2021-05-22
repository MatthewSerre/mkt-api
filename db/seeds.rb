require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'drivers.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
    begin
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

csv_text = File.read(Rails.root.join('lib', 'seeds', 'courses.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
    if /\d+$/.match?(row['name'])
        name = row['name'] + row['suffix'].to_s
    else
        name = row['name'] + ' ' + row['suffix'].to_s
    end
    name.strip!
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
    rescue => e
        puts "#{e.class.name}: #{e.message}"
    end
end

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'coursedriverconnections.csv'))
# csv = CSV.parse(csv_text.scrub, headers: true)
# csv.each do |row|
#     cdc = CourseDriverConnection.new
#     if !row['base'].nil?
#         driver = Driver.find_by(name: row['name'])
#         courses = Course.where("name LIKE ?", "%" + row['base']  + "%")
#         course = courses[0]
#         cdc.driver_id = driver.id
#         cdc.course_id = course.id
#         cdc.is_favorite = true
#         cdc.save
#         puts "#{driver.name}/#{course.name} connection saved."
#     elsif !row['level3'].nil?
#         driver = Driver.find_by(name: row['name'])
#         courses = Course.where("name LIKE ?", "%" + row['level3']  + "%")
#         course = courses[0]
#         cdc.driver_id = driver.id
#         cdc.course_id = course.id
#         cdc.is_favorite_at_level_3 = true
#         cdc.save
#         puts "#{driver.name}/#{course.name} connection saved."
#     elsif !row['level6'].nil?
#         driver = Driver.find_by(name: row['name'])
#         courses = Course.where("name LIKE ?", "%" + row['level6']  + "%")
#         course = courses[0]
#         cdc.driver_id = driver.id
#         cdc.course_id = course.id
#         cdc.is_favorite_at_level_6 = true
#         cdc.save
#         puts "#{driver.name}/#{course.name} connection saved."
#     end
end