import GrObnerShirshovBasesNonassociativeCanonicalLaneLean.CompositionDiamond

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure ReductionSystemPackage {O : GsObject} (C : CompositionDiamondPackage O) where
  reductionRules : Type
  irreducibilityCheck : Prop
  confluence : Prop
  termination : Prop
  normalFormAlgorithm : Type
  confluenceEvidence : irreducibilityCheck ∧ confluence ∧ termination

structure ReductionSystemEvidence {O : GsObject} {C : CompositionDiamondPackage O} (R : ReductionSystemPackage C) where
  irreducibilityCheckClosed : R.irreducibilityCheck
  confluenceClosed : R.confluence
  terminationClosed : R.termination

def ReductionSystemClosed {O : GsObject} {C : CompositionDiamondPackage O} (R : ReductionSystemPackage C) : Prop :=
  R.irreducibilityCheck ∧ R.confluence ∧ R.termination

theorem reduction_system_closed_from_evidence
    {O : GsObject} {C : CompositionDiamondPackage O} (R : ReductionSystemPackage C) (E : ReductionSystemEvidence R) :
    ReductionSystemClosed R := by
  exact And.intro E.irreducibilityCheckClosed
    (And.intro E.confluenceClosed E.terminationClosed)

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse