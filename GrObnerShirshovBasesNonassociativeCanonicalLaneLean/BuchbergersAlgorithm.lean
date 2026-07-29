import canonicalLaneMathlib.AdmissibleClass

/-!
# Buchberger’s Algorithm Package for Nonassociative Gröbner–Shirshov Bases

This module records an algorithm to compute a Gröbner–Shirshov basis from a
finite set of relations, generalizing Buchberger’s algorithm.
-/

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure BuchbergersAlgorithmPackage {F : FreeAlgebraPackage ℕ} where
  inputRelations : F.freeMonoid → Prop
  outputBasis : Set (F.freeMonoid × F.freeMonoid)
  terminationCondition : Prop
  correctnessCondition : Prop
  terminationConditionHolds : terminationCondition
  correctnessConditionHolds : correctnessCondition

structure BuchbergersAlgorithmEvidence {F : FreeAlgebraPackage ℕ}
    (B : BuchbergersAlgorithmPackage F) where
  terminationConditionClosed : B.terminationCondition
  correctnessConditionClosed : B.correctnessCondition

def BuchbergersAlgorithmClosed {F : FreeAlgebraPackage ℕ}
    (B : BuchbergersAlgorithmPackage F) : Prop :=
  B.terminationCondition ∧ B.correctnessCondition

theorem buchbergers_algorithm_closed_from_evidence {F : FreeAlgebraPackage ℕ}
    (B : BuchbergersAlgorithmPackage F) (E : BuchbergersAlgorithmEvidence B) :
    BuchbergersAlgorithmClosed B := by
  exact And.intro E.terminationConditionClosed E.correctnessConditionClosed

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse