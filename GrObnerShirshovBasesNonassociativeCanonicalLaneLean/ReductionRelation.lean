import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure ReductionRelation (A : Type u) where
  rewritingSystem : A → A → Prop
  compatibleWithMultiplication : Prop
  terminating : Prop
  confluent : Prop
  diamondProperty : Prop

def ReductionRelationClosed {A : Type u} (R : ReductionRelation A) : Prop :=
  R.terminating ∧ R.confluent ∧ R.diamondProperty

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse