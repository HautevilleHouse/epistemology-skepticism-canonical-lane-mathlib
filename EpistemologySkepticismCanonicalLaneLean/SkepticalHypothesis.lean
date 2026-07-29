import EpistemologySkepticismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure SkepticalHypothesisPackage where
  scenario : Type
  incompatibleWithKnowledge : Prop
  empiricallyEquivalent : Prop
  underminesJustification : Prop
  closureResistant : Prop

structure SkepticalHypothesisEvidence (S : SkepticalHypothesisPackage) where
  scenarioClosed : S.scenario
  incompatibleWithKnowledgeClosed : S.incompatibleWithKnowledge
  empiricallyEquivalentClosed : S.empiricallyEquivalent
  underminesJustificationClosed : S.underminesJustification
  closureResistantClosed : S.closureResistant

def SkepticalHypothesisClosed (S : SkepticalHypothesisPackage) : Prop :=
  S.scenario ∧ S.incompatibleWithKnowledge ∧ S.empiricallyEquivalent ∧
  S.underminesJustification ∧ S.closureResistant

theorem skeptical_hypothesis_closed_from_evidence (S : SkepticalHypothesisPackage)
    (E : SkepticalHypothesisEvidence S) : SkepticalHypothesisClosed S := by
  exact And.intro E.scenarioClosed
    (And.intro E.incompatibleWithKnowledgeClosed
      (And.intro E.empiricallyEquivalentClosed
        (And.intro E.underminesJustificationClosed E.closureResistantClosed)))

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse
