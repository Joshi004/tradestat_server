
# https://www1.nseindia.com/content/equities/EQUITY_L.csv
require 'csv'
module AssetLib
  class AssetHandler

    def update_all_assets
    asset_list = get_assets_list
    Asset.upsert_all! asset_list
    end
    
    def get_assets params
    return Asset.all
    # Have to implement parametrised asset retrival later
    end

    def get_assets_list
      p "Update All assets called"
      asset_file = File.read("app_assets/equity_list.csv")
      data = CSV.parse(asset_file)
      header_validated = validate_headers(data[0])
      asset_list = []
      if (header_validated) 
        puts "Headers Validated "
        for i  in (1...data.length) do
          asset_row = data[i]
          asset = {
            :symbol=> asset_row[0],
            :name=> asset_row[1],
            :series=> asset_row[2],
            :date_of_listing=> asset_row[3],
            :paid_up_value=> asset_row[4],
            :market_lot=> asset_row[5],
            :isin_number=> asset_row[6],
            :face_value=> asset_row[7],
            :created_at=> Time.now,
            :updated_at=> Time.now
          }
          asset_list.push(asset)
        end
      p "Final Asset list"
      return asset_list
      end   
    end

    def validate_headers (headers)
      p "Header Validation called"
      if headers .length != 8
        p "Length Not 8",headers.length
        return false
      elsif 
        (headers[0].strip != "SYMBOL") || 
        (headers[1].strip != "NAME OF COMPANY") || 
        (headers[2].strip != "SERIES") || 
        (headers[3].strip != "DATE OF LISTING") || 
        (headers[4].strip != "PAID UP VALUE") || 
        (headers[5].strip != "MARKET LOT") || 
        (headers[6].strip != "ISIN NUMBER") || 
        (headers[7].strip != "FACE VALUE")
        p "Improper headers",headers
        return false
      end
      p "Header validated"
      return true
    end

    end
  end

