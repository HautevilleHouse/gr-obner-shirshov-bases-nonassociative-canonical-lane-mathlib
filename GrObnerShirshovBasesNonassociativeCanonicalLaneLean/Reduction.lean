import GrObnerShirshovBasesNonassociativeCanonicalLaneLean.MonomialOrder

/-!
# Reduction Rules for Nonassociative Rewriting
-/

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure ReductionRule (X : Type u) where
  left : NonassociativeWord X
  right : NonassociativeWord X
  leadingTerm : NonassociativeWord X
  leadingCoeff : ℤ

structure RewritingSystem (X : Type u) where
  rules : List (ReductionRule X)
  reductionRelation : NonassociativeWord X → NonassociativeWord X → Prop
  irreflexive : Prop
  confluent : Prop
  terminating : Prop

structure RewritingSystemPackage (X : Type u) where
  sys : RewritingSystem X
  rulesAssigned : sys.rules ≠ []
  reductionRelationDefined : Prop
  irreflexiveAssigned : sys.irreflexive
  confluentAssigned : sys.confluent
  terminatingAssigned : sys.terminating

structure RewritingSystemEvidence {X : Type u} (R : RewritingSystemPackage X) where
  rulesNonempty : R.rulesAssigned
  reductionRelationDefinedClosed : R.reductionRelationDefined
  irreflexiveClosed : R.irreflexiveAssigned
  confluentClosed : R.confluentAssigned
  terminatingClosed : R.terminatingAssigned

def RewritingSystemClosed {X : Type u} (R : RewritingSystemPackage X) : Prop :=
  R.rulesAssigned ∧ R.reductionRelationDefined ∧ R.irreflexiveAssigned ∧
  R.confluentAssigned ∧ R.terminatingAssigned

theorem rewriting_system_closed_from_evidence {X : Type u} (R : RewritingSystemPackage X)
    (E : RewritingSystemEvidence R) : RewritingSystemClosed R := by
  exact And.intro E.rulesNonempty
    (And.intro E.reductionRelationDefinedClosed (And.intro E.irreflexiveClosed
      (And.intro E.confluentClosed E.terminatingClosed)))

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse
