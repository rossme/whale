require 'csv'

puts 'Destroying seeded database'
Voyage.destroy_all
puts 'Seeding Voyages, Masters, Vessels'


CSV.foreach(Rails.root.join('lib/saw_geo.csv'), headers: true) do |row|
  
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
        notes: row[19],
        latitude: row[20],
        longitude: row[21]
        })

    Master.create({
        master_code: row[12],
        master_unc: row[13],
        name: row[14]
    })

    Vessel.create({
        vessel_code: row[15],
        name: row[16],
        vessel_type: row[17],
        tonnage: row[18]
    })
end

puts '** Seeding of Scottish Arctic Whaling database completed **'
