import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrObnerShirshovBasesNonassociativeCanonicalLaneLean.CompositionDiamondLemmaEvidence

namespace HautevilleHouse
namespace GrObnerShirshovBasesNonassociativeCanonicalLaneLean

structure NormalFormUniquenessPackage where
  irreducibleForms : Prop
  reductionUnique : Prop
  confluenceProperty : Prop

def NormalFormUniquenessClosed (P : NormalFormUniquenessPackage) : Prop :=
  P.irreducibleForms ∧ P.reductionUnique ∧ P.confluenceProperty

theorem normal_form_uniqueness_closed (P : NormalFormUniquenessPackage) (E : P.irreducibleForms ∧ P.reductionUnique ∧ P.confluenceProperty) :
    NormalFormUniquenessClosed P := by
  exact E

end GrObnerShirshovBasesNonassociativeCanonicalLaneLean
end HautevilleHouse