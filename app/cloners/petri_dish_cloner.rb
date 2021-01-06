class PetriDishCloner < Clowne::Cloner
  adapter :active_record
  nullify :archived
  nullify :percent_complete
  nullify :inoculated_at
  nullify :run_started_at
  nullify :fully_colonized_at
  nullify :inoculated
  nullify :run_started
  nullify :fully_colonized


  # include_association :mushroom
  # include_association :agar_recipe

  # nullify :payed_at, :delivered_at

  # finalize do |source, record, _params|
  #   record.promotion_id = nil if source.promotion&.expired?
  #   record.uuid = Order.generate_uuid
  #   record.total_cents = OrderCalculator.call(record)
  # end
end
