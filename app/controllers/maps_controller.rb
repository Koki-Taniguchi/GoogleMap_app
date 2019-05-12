class MapsController < ApplicationController
  def search
    if params[:map]
      @map = Map.new(map_params)
      unless map_set(@map)
        flash.now[:notice] = "無効な検索内容です"
      end
    else
      @map = Map.new
      @map.latitude = 32.806186;  #初期を熊本城に設定
      @map.longitude = 130.705834;
    end
  end

  private
  def map_params
    params.require(:map).permit(:address)
  end

  def map_set(map)
    if address = Geocoder.coordinates(@map.address)
      map.latitude = address[0];
      map.longitude = address[1];
    else
      nil
    end
  end
end
