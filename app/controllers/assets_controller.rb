
class AssetsController < ApplicationController
  require "#{Rails.root}/lib/AssetsLib/asset_handler.rb"
  def get_asset
  end
  
  def remove_asset
  end
  
  def add_asset
    assetHandler = AssetLib::AssetHandler.new
    p "Add assets Object created"
    p assetHandler
    assetHandler.update_all_assets()
  end
end
