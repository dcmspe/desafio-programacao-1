class PurchasesController < ActionController::Base

  include PurchasesHelper

  def index
  end

  def upload

    Rails.logger.info "Starting the proccess of the file ..."

        File.open(params["purchases_data"].original_filename, 'r') do |file|
            index = 0
            while line = file.gets do
                if index > 0
                  data = line.split(/\t/)
                  populate_database(data)
                end
                index += 1
            end
        end

    Rails.logger.info "Finishing the proccess of the file ..."

    @purchases = Purchase.all
    @total = Purchase.total

    render :index
  end
end
