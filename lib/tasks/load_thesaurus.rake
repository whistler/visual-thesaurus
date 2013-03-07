namespace :thesaurus do
  desc "import mythes(from openoffice) into database"
  task :load do
    file = Rails.root + "db/th_en_US_new.dat"
    File.open(file) do |f|
      temp = f.readline
      puts temp
      while(!f.eof?) do
        line = f.readline
        word, count = line.split("|")
        count.strip.to_i.times do
          line = f.readline
          line = line.split("|")
          category = line.first
          
        end
        puts word
      end
    end
  end
end