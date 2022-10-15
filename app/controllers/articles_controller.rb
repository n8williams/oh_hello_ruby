class ArticlesController < ApplicationController
  def index
    @time = Time.now
  end

  def hello

  end

  def sharks_from_csv
    csv_file = File.join Rails.root, 'db', 'sharks.csv'   
    AddEndangeredWorker.perform_async(csv_file)
    redirect_to action: "index", notice: 'Endangered sharks have been uploaded!'
    # puts 'Endangered sharks have been uploaded!'
  end
end
