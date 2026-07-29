import GrObnerShirshovBasesNonassociativeCanonicalLaneLean.CompositionDiamond

/-!
# Normal Form and Unique Representation
-/

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure NormalForm (X : Type u) where
  representative : NonassociativeWord X → NonassociativeWord X
  irreducibleImage : Prop
  uniqueUpToAlgebra : Prop

structure NormalFormPackage (X : Type u) where
  form : NormalForm X
  representativeDefined : Prop
  irreducibleAssigned : form.irreducibleImage
  uniqueAssigned : form.uniqueUpToAlgebra

structure NormalFormEvidence {X : Type u} (N : NormalFormPackage X) where
  representativeDefinedClosed : N.representativeDefined
  irreducibleClosed : N.irreducibleAssigned
  uniqueClosed : N.uniqueAssigned

def NormalFormClosed {X : Type u} (N : NormalFormPackage X) : Prop :=
  N.representativeDefined ∧ N.irreducibleAssigned ∧ N.uniqueAssigned

theorem normal_form_closed_from_evidence {X : Type u} (N : NormalFormPackage X)
    (E : NormalFormEvidence N) : NormalFormClosed N := by
  exact And.intro E.representativeDefinedClosed (And.intro E.irreducibleClosed E.uniqueClosed)

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse
