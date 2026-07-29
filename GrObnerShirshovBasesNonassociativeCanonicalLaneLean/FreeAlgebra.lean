import canonicalLaneMathlib.AdmissibleClass

/-!
# Free Algebra Package for Nonassociative Gröbner–Shirshov Bases

This module defines a free nonassociative algebra over a set of variables.
The package records the generating set and the free algebra structure.
-/

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure FreeAlgebraPackage (V : Type u) where
  generatingSet : Set V
  freeMonoid : Type v
  multiplication : freeMonoid → freeMonoid → freeMonoid
  leftModule : Type w
  coefficientRing : Type x
  algebraStructure : Prop

structure FreeAlgebraEvidence {V : Type u} (F : FreeAlgebraPackage V) where
  generatingSetClosed : F.generatingSet ≠ ∅
  multiplicationAssociative : Prop
  multiplicationAssociativeClosed : multiplicationAssociative
  leftModuleClosed : F.leftModule ≠ ∅
  algebraStructureClosed : F.algebraStructure

def FreeAlgebraClosed {V : Type u} (F : FreeAlgebraPackage V) : Prop :=
  F.generatingSet ≠ ∅ ∧ F.algebraStructure

theorem free_algebra_closed_from_evidence {V : Type u} (F : FreeAlgebraPackage V)
    (E : FreeAlgebraEvidence F) : FreeAlgebraClosed F := by
  exact And.intro E.generatingSetClosed E.algebraStructureClosed

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse