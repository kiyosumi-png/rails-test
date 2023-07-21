json.array! @brands do |brand|
	json.partial! partial: 'api/brands/brand', locals: {brand: brand}
end
