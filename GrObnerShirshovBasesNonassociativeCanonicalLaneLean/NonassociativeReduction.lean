import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure NonassociativeReductionSystem where
  generators : Type
  relations : Type
  reductionRule : Type
  noetherian : Prop
  locallyConfluent : Prop
  confluent : Prop
  convergent : noetherian ∧ locallyConfluent → confluent

def ReductionClosed (R : NonassociativeReductionSystem) : Prop :=
  R.confluent

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse