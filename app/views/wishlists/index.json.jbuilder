json.array!(@wishlists) do |wishlist|
  json.extract! wishlist, :id, :name, :url, :price, :brand
  json.url wishlist_url(wishlist, format: :json)
end
