class PetriDishCloner < Clowne::Cloner
  adapter :active_record


  # include_association :mushroom
  # include_association :agar_recipe

  # nullify :payed_at, :delivered_at

  # finalize do |name|
  #   name.update("cloned")
  # #   record.uuid = Order.generate_uuid
  # #   record.total_cents = OrderCalculator.call(record)
  # end
end
