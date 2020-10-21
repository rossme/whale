require 'csv'

puts 'Destroying Database'
Voyage.destroy_all

CSV.foreach(Rails.root.join('lib/saw.csv'), headers: true) do |row|
  
  Voyage.create({
    voyage_code: row[0],
    name: row[1],
    port: row[2],
    whaling_ground: row[3],
    sealing_ground: row[4],
    year: row[5],
    whales: row[6],
    whale_oil: row[7],
    seals: row[8],
    seal_oil: row[9],
    other_whales: row[10],
    source: row[11],
    notes: row[12]
})
end

puts '** Seeding Scottish Arctic Whaling Database completed **'
