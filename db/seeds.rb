require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'drivers.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# # fp = open(Rails.root.join('lib', 'seeds', 'drivers.csv'))
# # data = fp.read().decode("utf-8-sig").encode("utf-8")

csv_text = File.read(Rails.root.join('lib', 'seeds', 'drivers.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
    d = Driver.new
    d.name = row['name']
    d.rarity = row['rarity']
    d.special_skill = row['special_skill']
    d.debut_tour = row['debut_tour']
    d.date_added = row['date_added']
    d.has_extended_tongue = row['has_extended_tongue']
    d.has_horns = row['has_horns']
    d.has_mustache = row['has_mustache']
    d.has_shell = row['has_shell']
    d.has_three_hairs = row['has_three_hairs']
    d.is_baby = row['is_baby']
    d.is_daily_select = row['is_daily_select']
    d.is_kong = row['is_kong']
    d.is_koopaling = row['is_koopaling']
    d.wears_crown = row['wears_crown']
    d.wears_dress = row['wears_dress']
    d.wears_earrings = row['wears_earrings']
    d.wears_gloves = row['wears_gloves']
    d.wears_hat = row['wears_hat']
    d.wears_helment = row['wears_helmet']
    d.wears_ribbon = row['wears_ribbon']
    d.wears_short_sleeves = row['wears_short_sleeves']
    d.wears_tie = row['wears_tie']
    d.save
    puts "#{d.name} saved."
end