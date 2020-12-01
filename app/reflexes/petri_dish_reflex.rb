# frozen_string_literal: true

class PetriDishReflex < ApplicationReflex
  # Add Reflex methods in this file.
  #
  # All Reflex instances expose the following properties:
  #
  #   - connection - the ActionCable connection
  #   - channel - the ActionCable channel
  #   - request - an ActionDispatch::Request proxy for the socket connection
  #   - session - the ActionDispatch::Session store for the current visitor
  #   - url - the URL of the page that triggered the reflex
  #   - element - a Hash like object that represents the HTML element that triggered the reflex
  #   - params - parameters from the element's closest form (if any)
  #
  # Example:
  #
  #   def example(argument=true)
  #     # Your logic here...
  #     # Any declared instance variables will be made available to the Rails controller and view.
  #   end
  #
  # Learn more at: https://docs.stimulusreflex.com
  def mark_inoculated
    @petri_dish = PetriDish.find(element.dataset.id)
    @petri_dish.update(inoculated: true, inoculated_at: Time.now)
  end

  def mark_not_inoculated
    @petri_dish = PetriDish.find(element.dataset.id)
    @petri_dish.update(inoculated: false, inoculated_at: nil)
  end

  def mark_started
    @petri_dish = PetriDish.find(element.dataset.id)
    @petri_dish.update(run_started: true, run_started_at: Time.now)
  end

  def mark_not_started
    @petri_dish = PetriDish.find(element.dataset.id)
    @petri_dish.update(run_started: false, run_started_at: nil)
  end

  def mark_fully_colonized
    @petri_dish = PetriDish.find(element.dataset.id)
    @petri_dish.update(fully_colonized: true, fully_colonized_at: Time.now)
  end

  def mark_not_fully_colonized
    @petri_dish = PetriDish.find(element.dataset.id)
    @petri_dish.update(fully_colonized: false, fully_colonized_at: nil)
  end
end
