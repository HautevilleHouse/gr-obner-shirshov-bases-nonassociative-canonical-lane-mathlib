import GrObnerShirshovBasesNonassociativeCanonicalLaneLean.FreeAlgebra

/-!
# Monomial Order for Nonassociative Words
-/

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure MonomialOrder (X : Type u) where
  carrier : NonassociativeWord X → NonassociativeWord X → Prop
  total : Prop
  transitive : Prop
  antisymmetric : Prop
  wellFounded : Prop
  compatibleWithMultiplication : Prop

structure MonomialOrderPackage (X : Type u) where
  order : MonomialOrder X
  totalAssigned : order.total
  transitiveAssigned : order.transitive
  antisymmetricAssigned : order.antisymmetric
  wellFoundedAssigned : order.wellFounded
  compatibleAssigned : order.compatibleWithMultiplication

structure MonomialOrderEvidence {X : Type u} (M : MonomialOrderPackage X) where
  totalClosed : M.totalAssigned
  transitiveClosed : M.transitiveAssigned
  antisymmetricClosed : M.antisymmetricAssigned
  wellFoundedClosed : M.wellFoundedAssigned
  compatibleClosed : M.compatibleAssigned

def MonomialOrderClosed {X : Type u} (M : MonomialOrderPackage X) : Prop :=
  M.totalAssigned ∧ M.transitiveAssigned ∧ M.antisymmetricAssigned ∧
  M.wellFoundedAssigned ∧ M.compatibleAssigned

theorem monomial_order_closed_from_evidence {X : Type u} (M : MonomialOrderPackage X)
    (E : MonomialOrderEvidence M) : MonomialOrderClosed M := by
  exact And.intro E.totalClosed
    (And.intro E.transitiveClosed (And.intro E.antisymmetricClosed
      (And.intro E.wellFoundedClosed E.compatibleClosed)))

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse
