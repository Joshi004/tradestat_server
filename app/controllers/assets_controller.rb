
class AssetsController < ApplicationController
  require "#{Rails.root}/lib/AssetsLib/asset_handler.rb"
  def get_asset
    status = 200
    assetHandler = AssetLib::AssetHandler.new
    response = assetHandler.get_assets(params)
    render :json => response.to_json, :status => status
  end
  
  def remove_asset
    # Has to be removed using DB itself as of now
  end
  
  def add_asset
    assetHandler = AssetLib::AssetHandler.new
    assetHandler.update_all_assets
  end
end
