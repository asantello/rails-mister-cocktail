class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, :cocktail, :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }
end

# Validation
# A cocktail must have a unique name.
# An ingredient must have a unique name.
# A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.

# Associations
# You can’t delete an ingredient if it is used by at least one cocktail.
# When you delete a cocktail, you should delete associated doses (but not the ingredients as they can be linked to other cocktails).
