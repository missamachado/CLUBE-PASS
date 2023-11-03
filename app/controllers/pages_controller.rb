class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @flats = Flat.all
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {flat: flat}),
        marker_html: render_to_string(partial: "marker",locals: {flat: flat})
      }
    end
  end
end
