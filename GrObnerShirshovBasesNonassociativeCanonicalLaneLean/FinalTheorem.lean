import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

def ConstrainedGrObnerShirshovClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gr_obner_shirshov_endgame (A : AdmissibleClass) :
    ConstrainedGrObnerShirshovClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse