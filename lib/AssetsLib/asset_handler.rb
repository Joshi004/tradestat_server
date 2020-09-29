
# https://www1.nseindia.com/content/equities/EQUITY_L.csv
require 'csv'
module AssetLib
  class AssetHandler
    def update_all_assets
      asset_file = File.read("app_assets/equity_list.csv")
      data = CSV.parse(asset_file)
      p data      # security_list=[]
      # secrity = Asset.new(name: "PunjabNation", symbol: "PNB")
      # # data.each do |row|
      # #   p "Curreht Row is \n"
      # #   p row 
      # #   p "************"
      # #   security = Asset.new(row[1],row[0],row[2],row[3],row[7]) 
      # #   security_list.push(security)
      # # end
      # Asset.insert_all(security_list)
    end
  end
end

