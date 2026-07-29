import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NonassociativeGrObnerShirshovSpace where
  carrier : Type
  freeAlgebraStructure : Prop

structure NonassociativeGrObnerShirshovAdmittedObject where
  space : NonassociativeGrObnerShirshovSpace
  finiteRelations : Prop
  grObnerShirshovBasis : Prop
  leadingTermClosure : Prop
  basisIsGrObnerShirshov : Prop
  conclusion : basisIsGrObnerShirshov

structure NonassociativeGrObnerShirshovEndgameState where
  object : NonassociativeGrObnerShirshovAdmittedObject

def NonassociativeGrObnerShirshovWitnessClosed (O : NonassociativeGrObnerShirshovAdmittedObject) : Prop :=
  O.basisIsGrObnerShirshov

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse