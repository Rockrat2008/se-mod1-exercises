require 'CSV'
class AnimalLoverFactory

    def create_animal_lovers(source_file)
        animal_lovers = []
        CSV.foreach(source_file, headers: true, header_converters: :symbol) do |row|
            id = row[:id].to_i
            first_name = row[:first_name]
            last_name = row[:last_name]
            age = row[:age].to_i
            animal_lover = AnimalLover.new(id,first_name,last_name,age)

            puts "#{animal_lover.full_name} has been created!"
          end
          animal_lovers
    end
end