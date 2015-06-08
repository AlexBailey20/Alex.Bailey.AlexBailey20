json.array!(@purchase_histories) do |purchase_history|
  json.extract! purchase_history, :id, :user_id, :item_id
  json.url purchase_history_url(purchase_history, format: :json)
end
