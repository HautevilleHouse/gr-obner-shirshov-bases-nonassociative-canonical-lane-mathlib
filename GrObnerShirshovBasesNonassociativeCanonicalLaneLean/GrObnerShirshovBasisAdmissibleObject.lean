import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrObnerShirshovBasesNonassociativeCanonicalLaneLean.NonassociativeGrObnerShirshovAlgebraPrelim

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure GrObnerShirshovAdmittedObject where
  algebra : NonassociativeAlgebra ℤ
  ideal : Set algebra.carrier
  generatingSet : Set algebra.carrier
  isBasis : generatingSet generates ideal under rewriting
  rewritingComplete : Prop
  conclusion : rewritingComplete

structure AdmissibleClass where
  object : GrObnerShirshovAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GrObnerShirshovWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse