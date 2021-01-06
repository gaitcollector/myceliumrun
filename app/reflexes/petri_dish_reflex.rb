# frozen_string_literal: true

class PetriDishReflex < ApplicationReflex
  # Add Reflex methods in this file.

  #
  # Learn more at: https://docs.stimulusreflex.com
  def mark_inoculated
    @petri_dish = PetriDish.find(element.dataset.id)
    @petri_dish.update(inoculated: true, inoculated_at: Time.now, percent_complete: 20)
  end

  def mark_not_inoculated
    @petri_dish = PetriDish.find(element.dataset.id)
    @petri_dish.update(inoculated: false, inoculated_at: nil, percent_complete: 0)
  end

  def mark_started
    @petri_dish = PetriDish.find(element.dataset.id)
    @petri_dish.update(run_started: true, run_started_at: Time.now, percent_complete: 40)
  end

  def mark_not_started
    @petri_dish = PetriDish.find(element.dataset.id)
    @petri_dish.update(run_started: false, run_started_at: nil, percent_complete: 20)
  end

  def mark_fully_colonized
    @petri_dish = PetriDish.find(element.dataset.id)
    @petri_dish.update(fully_colonized: true, fully_colonized_at: Time.now, percent_complete: 100)
  end

  def mark_not_fully_colonized
    @petri_dish = PetriDish.find(element.dataset.id)
    @petri_dish.update(fully_colonized: false, fully_colonized_at: nil, percent_complete: 40)
  end

  def cloned
    petri_dish = PetriDish.find(element.dataset.id)
    cloned = PetriDishCloner.call(petri_dish)
    cloned.save!
  end
  def archive
    @petri_dish = PetriDish.find(element.dataset.id)
    @petri_dish.update(archived: true)
  end
  def unarchive
    @petri_dish = PetriDish.find(element.dataset.id)
    @petri_dish.update(archived: nil)
  end

end
