import GrObnerShirshovBasesNonassociativeCanonicalLaneLean.ReductionSystem

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure CanonicalBasisPackage {O : GsObject} {C : CompositionDiamondPackage O} (R : ReductionSystemPackage C) where
  basisElements : Type
  linearIndependence : Prop
  spanning : Prop
  multiplicationRule : Prop
  basisEvidence : linearIndependence ∧ spanning ∧ multiplicationRule

structure CanonicalBasisEvidence {O : GsObject} {C : CompositionDiamondPackage O} {R : ReductionSystemPackage C} (B : CanonicalBasisPackage R) where
  linearIndependenceClosed : B.linearIndependence
  spanningClosed : B.spanning
  multiplicationRuleClosed : B.multiplicationRule

def CanonicalBasisClosed {O : GsObject} {C : CompositionDiamondPackage O} {R : ReductionSystemPackage C} (B : CanonicalBasisPackage R) : Prop :=
  B.linearIndependence ∧ B.spanning ∧ B.multiplicationRule

theorem canonical_basis_closed_from_evidence
    {O : GsObject} {C : CompositionDiamondPackage O} {R : ReductionSystemPackage C}
    (B : CanonicalBasisPackage R) (E : CanonicalBasisEvidence B) : CanonicalBasisClosed B := by
  exact And.intro E.linearIndependenceClosed
    (And.intro E.spanningClosed E.multiplicationRuleClosed)

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse