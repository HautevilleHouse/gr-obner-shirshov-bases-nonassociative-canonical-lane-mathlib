import GrObnerShirshovBasesNonassociativeCanonicalLaneLean.NormalForm

/-!
# Structure Constants for Nonassociative Algebras
-/

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure StructureConstants (X : Type u) where
  basis : List (NonassociativeWord X)
  multiplicationTable : NonassociativeWord X → NonassociativeWord X → List (ℤ × NonassociativeWord X)
  associativityCondition : Prop
  consistencyCondition : Prop

structure StructureConstantsPackage (X : Type u) where
  constants : StructureConstants X
  basisAssigned : constants.basis ≠ []
  multiplicationTableDefined : Prop
  associativityAssigned : constants.associativityCondition
  consistencyAssigned : constants.consistencyCondition

structure StructureConstantsEvidence {X : Type u} (S : StructureConstantsPackage X) where
  basisNonempty : S.basisAssigned
  multiplicationTableDefinedClosed : S.multiplicationTableDefined
  associativityClosed : S.associativityAssigned
  consistencyClosed : S.consistencyAssigned

def StructureConstantsClosed {X : Type u} (S : StructureConstantsPackage X) : Prop :=
  S.basisAssigned ∧ S.multiplicationTableDefined ∧ S.associativityAssigned ∧ S.consistencyAssigned

theorem structure_constants_closed_from_evidence {X : Type u} (S : StructureConstantsPackage X)
    (E : StructureConstantsEvidence S) : StructureConstantsClosed S := by
  exact And.intro E.basisNonempty
    (And.intro E.multiplicationTableDefinedClosed (And.intro E.associativityClosed E.consistencyClosed))

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse
