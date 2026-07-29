import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure AdmissibleClass where
  object : NonassociativeGrObnerShirshovAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NonassociativeGrObnerShirshovWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse