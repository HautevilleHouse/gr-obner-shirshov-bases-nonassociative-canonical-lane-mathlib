import HautevilleHouse.GrObnerShirshovBasesNonassociativeCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure GrObnerShirshovSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GrObnerShirshovAdmittedObject where
  space : GrObnerShirshovSpace
  closedThreeManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure GrObnerShirshovEndgameState where
  object : GrObnerShirshovAdmittedObject

def GrObnerShirshovWitnessClosed (O : GrObnerShirshovAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse