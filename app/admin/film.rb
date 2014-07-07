ActiveAdmin.register Film do
  permit_params :title, :film_summary, :film_year, :is_released_netflix, :is_released_amazon_stream, :is_released_disc, :netlifx_link, :amazon_stream_link, :disc_link

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
