import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure BasisTheorem (A : Type u) where
  shirshovAlgorithm : ShirshovAlgorithm A
  basisComputed : Prop
  independence : Prop
  spanning : Prop
  structureConstants : Prop

def BasisTheoremClosed {A : Type u} (B : BasisTheorem A) : Prop :=
  ShirshovAlgorithmClosed B.shirshovAlgorithm ∧
  B.basisComputed ∧ B.independence ∧ B.spanning ∧ B.structureConstants

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse