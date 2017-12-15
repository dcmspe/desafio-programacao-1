class PurchasesController < ActionController::Base
  def index
  end

  def upload

    Rails.logger.info "Starting the proccess of the file ..."

    File.open(params["purchases_data"].original_filename, 'r') do |file|
        index = 0
        while line = file.gets
            if(index > 0){
              data = line.split(/\t/)
              populate(data)
            }
            index++
        end

        @purchases = Purchase.all
        @total = Purchase.sum(:quantity)


    end
  end

  private

  populate
end
