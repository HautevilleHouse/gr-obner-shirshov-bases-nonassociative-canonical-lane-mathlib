import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GrObnerShirshovWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse