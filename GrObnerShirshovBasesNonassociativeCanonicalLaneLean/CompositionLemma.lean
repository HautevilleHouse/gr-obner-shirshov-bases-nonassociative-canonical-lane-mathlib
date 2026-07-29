import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure Composition where
  leftComponent : Type
  rightComponent : Type
  overlap : Type
  resolved : Prop

def CompositionLemmaClosed (C : Composition) : Prop :=
  C.resolved

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse