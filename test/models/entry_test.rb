require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test  "is valid with valid attributes" do
    entry = Entry.new(meal_type: "Breakfast", calories: 300, proteins: 15, carbohydrates: 30, fats: 10)
    assert entry.save
 end

 test "should not save entry without calories" do
    entry = Entry.new(meal_type: "Breakfast", proteins: 15, carbohydrates: 30, fats: 10)
    assert_not entry.save
 end

  test "should not save entry without meal_type" do
    entry = Entry.new(calories: 300, proteins: 15, carbohydrates: 30, fats: 10)
    assert_not entry.save
  end

  test "should not save entry without proteins" do
    entry = Entry.new(meal_type: "Breakfast", calories: 300, carbohydrates: 30, fats: 10)
    assert_not entry.save
  end

  test "should not save entry without carbohydrates" do
    entry = Entry.new(meal_type: "Breakfast", calories: 300, proteins: 15, fats: 10)
    assert_not entry.save
  end
end
