import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure GrObnerShirshovData where
  alphabet : Type
  monomials : Type
  reductions : Type
  convergence : Prop
  confluence : Prop
  termination : Prop
  completeness : convergence ∧ confluence ∧ termination

def GrObnerShirshovWitnessClosed (D : GrObnerShirshovData) : Prop :=
  D.completeness

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse