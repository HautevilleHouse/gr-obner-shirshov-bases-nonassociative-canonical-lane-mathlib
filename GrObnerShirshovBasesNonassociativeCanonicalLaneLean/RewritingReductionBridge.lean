import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrObnerShirshovBasesNonassociativeCanonicalLaneLean.GrObnerShirshovBasisAdmissibleObject

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

def GrObnerShirshovWitnessClosed (O : GrObnerShirshovAdmittedObject) : Prop :=
  O.rewritingComplete

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GrObnerShirshovWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse