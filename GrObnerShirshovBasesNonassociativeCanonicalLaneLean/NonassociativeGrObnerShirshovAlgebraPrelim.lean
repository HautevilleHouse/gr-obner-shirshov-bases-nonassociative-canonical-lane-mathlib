import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure NonassociativeAlgebra (k : Type u) [CommRing k] where
  carrier : Type v
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  smul : k → carrier → carrier
  addAssoc : ∀ x y z : carrier, add (add x y) z = add x (add y z)
  addComm : ∀ x y : carrier, add x y = add y x
  addZero : ∀ x : carrier, add x (0 : carrier) = x
  addNeg : ∀ x : carrier, add x (-x) = 0
  mulDistribLeft : ∀ x y z : carrier, mul x (add y z) = add (mul x y) (mul x z)
  mulDistribRight : ∀ x y z : carrier, mul (add x y) z = add (mul x z) (mul y z)
  smulDistrib : ∀ (a : k) (x y : carrier), smul a (add x y) = add (smul a x) (smul a y)

structure FreeNonassociativeAlgebra (k : Type u) [CommRing k] (X : Type v) where
  generators : X
  algebra : NonassociativeAlgebra k

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse