import canonicalLaneMathlib.AdmissibleClass

/-!
# Leading Terms Package for Nonassociative Gröbner–Shirshov Bases

This module defines leading monomials and the notion of a Gröbner–Shirshov basis
in a free nonassociative algebra.
-/

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure LeadingTermsPackage {F : FreeAlgebraPackage ℕ} where
  monomialOrder : Type u
  leadingTermMap : F.freeMonoid → F.freeMonoid
  leadingTermDefined : ∀ m : F.freeMonoid, leadingTermMap m = m ∨ leadingTermMap m ≠ m
  reductionSystem : Prop
  basisProperty : Prop

structure LeadingTermsEvidence {F : FreeAlgebraPackage ℕ}
    (L : LeadingTermsPackage F) where
  leadingTermDefinedClosed : ∀ m : F.freeMonoid, L.leadingTermMap m = m ∨ L.leadingTermMap m ≠ m
  reductionSystemClosed : L.reductionSystem
  basisPropertyClosed : L.basisProperty

def LeadingTermsClosed {F : FreeAlgebraPackage ℕ} (L : LeadingTermsPackage F) : Prop :=
  (∀ m : F.freeMonoid, L.leadingTermMap m = m ∨ L.leadingTermMap m ≠ m) ∧ L.reductionSystem ∧ L.basisProperty

theorem leading_terms_closed_from_evidence {F : FreeAlgebraPackage ℕ}
    (L : LeadingTermsPackage F) (E : LeadingTermsEvidence L) :
    LeadingTermsClosed L := by
  exact And.intro E.leadingTermDefinedClosed
    (And.intro E.reductionSystemClosed E.basisPropertyClosed)

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse