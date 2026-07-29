import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure NonassociativePolynomialRing (X : Type u) where
  carrier : Type v
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  freeGenerators : X → carrier
  nonassociative : Prop
  distributivity : Prop

def NonassociativePolynomialRingClosed {X : Type u} (R : NonassociativePolynomialRing X) : Prop :=
  R.nonassociative ∧ R.distributivity

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse