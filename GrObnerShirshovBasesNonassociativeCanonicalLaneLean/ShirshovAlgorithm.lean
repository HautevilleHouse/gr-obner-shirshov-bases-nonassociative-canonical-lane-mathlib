import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure ShirshovAlgorithm (A : Type u) where
  reductionRelation : ReductionRelation A
  compositionLemma : CompositionLemma A
  completionProcedure : Prop
  normalForms : Prop

def ShirshovAlgorithmClosed {A : Type u} (S : ShirshovAlgorithm A) : Prop :=
  ReductionRelationClosed S.reductionRelation ∧
  CompositionLemmaClosed S.compositionLemma ∧
  S.completionProcedure ∧ S.normalForms

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse