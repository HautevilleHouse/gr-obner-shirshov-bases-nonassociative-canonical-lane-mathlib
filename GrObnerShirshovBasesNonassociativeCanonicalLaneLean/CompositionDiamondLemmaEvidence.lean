import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrObnerShirshovBasesNonassociativeCanonicalLaneLean.RewritingReductionBridge

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure CompositionDiamondEvidence where
  leadingTermMatchCondition : Prop
  compositionResolved : Prop
  sinkConfluence : Prop
  evidence1 : leadingTermMatchCondition
  evidence2 : compositionResolved
  evidence3 : sinkConfluence

def CompositionDiamondClosed (C : CompositionDiamondEvidence) : Prop :=
  C.leadingTermMatchCondition ∧ C.compositionResolved ∧ C.sinkConfluence

theorem composition_diamond_closed_from_evidence (C : CompositionDiamondEvidence) :
    CompositionDiamondClosed C := by
  exact And.intro C.evidence1 (And.intro C.evidence2 C.evidence3)

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse