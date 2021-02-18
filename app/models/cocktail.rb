class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses


  validates :name, presence: true, uniqueness: true
end




# Validation
# A cocktail must have a unique name.
# An ingredient must have a unique name.
# A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.

# Associations
# An ingredient has many doses
# A dose belongs to an ingredient
# A dose belongs to a cocktail
# You can’t delete an ingredient if it is used by at least one cocktail.
# When you delete a cocktail, you should delete associated doses (but not the ingredients as they can be linked to other cocktails).
