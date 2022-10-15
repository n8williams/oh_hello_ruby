class AddEndangeredWorker
  require 'csv'
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(csv_file)
    CSV.foreach(csv_file, headers: true) do |shark|
      
      a = Article.create!(title: shark[0])
      puts a.id
    end
  end
end