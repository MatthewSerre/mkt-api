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

drivers = Driver.all
drivers.each do |driver|
    cdc_base = CourseDriverConnection.where(driver_id: driver.id, is_favorite: true)
    cdc_base.each do |cdc|
        c = Course.find(cdc.course_id)
        if !driver.favorite_courses_base.include?(c.name)
            driver.favorite_courses_base.push(c.name)
        end
    end
    driver.favorite_courses_base.sort!
    driver.save
    puts "Favorite courses base added for #{driver.name}."
end

drivers = Driver.all
drivers.each do |driver|
    cdc_level_3 = CourseDriverConnection.where(driver_id: driver.id, is_favorite_at_level_3: true)
    cdc_level_3.each do |cdc|
        c = Course.find(cdc.course_id)
        if !driver.favorite_courses_level_3.include?(c.name)
            driver.favorite_courses_level_3.push(c.name)
        end
    end
    driver.favorite_courses_level_3.sort!
    driver.save
    puts "Favorite courses level 3 added for #{driver.name}."
end

drivers = Driver.all
drivers.each do |driver|
    cdc_level_6 = CourseDriverConnection.where(driver_id: driver.id, is_favorite_at_level_6: true)
    cdc_level_6.each do |cdc|
        c = Course.find(cdc.course_id)
        if !driver.favorite_courses_level_6.include?(c.name)
            driver.favorite_courses_level_6.push(c.name)
        end
    end
    driver.favorite_courses_level_6.sort!
    driver.save
    puts "Favorite courses level 6 added for #{driver.name}."
end

drivers = Driver.all
drivers.each do |driver|
    cdc_favored = CourseDriverConnection.where(driver_id: driver.id, is_favored: true)
    cdc_favored.each do |cdc|
        c = Course.find(cdc.course_id)
        if !driver.favored_courses.include?(c.name)
            driver.favored_courses.push(c.name)
        end
    end
    driver.favored_courses.sort!
    driver.save
    puts "Favored courses added for #{driver.name}."
end

courses = Course.all
courses.each do |course|
    cdc_level_6 = CourseDriverConnection.where(course_id: course.id, is_favorite_at_level_6: true)
    cdc_level_6.each do |cdc|
        d = Driver.find(cdc.driver_id)
        if !course.top_shelf_drivers_level_6.include?(d.name)
            course.top_shelf_drivers_level_6.push(d.name)
        end
    end
    course.top_shelf_drivers_level_6.sort!
    course.save
    puts "Top shelf drivers level 6 added for #{course.name}."
end

courses = Course.all
courses.each do |course|
    cdc_level_3 = CourseDriverConnection.where(course_id: course.id, is_favorite_at_level_3: true)
    cdc_level_3.each do |cdc|
        d = Driver.find(cdc.driver_id)
        if !course.top_shelf_drivers_level_3.include?(d.name)
            course.top_shelf_drivers_level_3.push(d.name)
        end
    end
    course.top_shelf_drivers_level_3.sort!
    course.save
    puts "Top shelf drivers level 3 added for #{course.name}."
end

courses = Course.all
courses.each do |course|
    cdc_base = CourseDriverConnection.where(course_id: course.id, is_favorite: true)
    cdc_base.each do |cdc|
        d = Driver.find(cdc.driver_id)
        if !course.top_shelf_drivers_base.include?(d.name)
            course.top_shelf_drivers_base.push(d.name)
        end
    end
    course.top_shelf_drivers_base.sort!
    course.save
    puts "Top shelf drivers base added for #{course.name}."
end

courses = Course.all
courses.each do |course|
    cdc_favored = CourseDriverConnection.where(course_id: course.id, is_favored: true)
    cdc_favored.each do |cdc|
        d = Driver.find(cdc.driver_id)
        if !course.mid_shelf_drivers.include?(d.name)
            course.mid_shelf_drivers.push(d.name)
        end
    end
    course.mid_shelf_drivers.sort!
    course.save
    puts "Mid shelf drivers added for #{course.name}."
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
# end