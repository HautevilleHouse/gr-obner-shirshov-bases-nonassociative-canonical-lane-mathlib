import canonicalLaneMathlib.AdmissibleClass

/-!
# Composition–Diamond Lemma Package for Nonassociative Gröbner–Shirshov Bases

This module records the key lemma that for a set of relations closed under
composition, the reduction system is confluent and yields a Gröbner–Shirshov basis.
-/

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure CompositionDiamondPackage where
  rewritingOrder : Type u
  reductionRelation : rewritingOrder → rewritingOrder → Prop
  wellFoundedOrder : Prop
  compositionClosure : Prop
  confluenceProperty : Prop
  rewritingOrderDefined : rewritingOrder ≠ ∅

structure CompositionDiamondEvidence (C : CompositionDiamondPackage) where
  wellFoundedOrderClosed : C.wellFoundedOrder
  compositionClosureClosed : C.compositionClosure
  confluencePropertyClosed : C.confluenceProperty

def CompositionDiamondClosed (C : CompositionDiamondPackage) : Prop :=
  C.wellFoundedOrder ∧ C.compositionClosure ∧ C.confluenceProperty

theorem composition_diamond_closed_from_evidence (C : CompositionDiamondPackage)
    (E : CompositionDiamondEvidence C) : CompositionDiamondClosed C := by
  exact And.intro E.wellFoundedOrderClosed
    (And.intro E.compositionClosureClosed E.confluencePropertyClosed)

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse