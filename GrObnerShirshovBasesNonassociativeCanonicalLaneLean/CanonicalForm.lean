import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure CanonicalForm (A : Type u) where
  basisTheorem : BasisTheorem A
  reductionAlgorithm : Prop
  uniqueness : Prop
  computable : Prop

def CanonicalFormClosed {A : Type u} (C : CanonicalForm A) : Prop :=
  BasisTheoremClosed C.basisTheorem ∧ C.uniqueness ∧ C.computable

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse