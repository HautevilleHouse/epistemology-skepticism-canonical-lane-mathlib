import EpistemologySkepticismCanonicalLaneLean.JustificationClosure

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure EpistemicContextPackage {S : SkepticalHypothesisPackage}
    (J : JustificationClosurePackage S) where
  contextSensitivity : Prop
  standardsVariability : Prop
  knowledgeAttribution : Prop
  skepticalContextDefeated : Prop

structure EpistemicContextEvidence {S : SkepticalHypothesisPackage}
    {J : JustificationClosurePackage S} (C : EpistemicContextPackage J) where
  contextSensitivityClosed : C.contextSensitivity
  standardsVariabilityClosed : C.standardsVariability
  knowledgeAttributionClosed : C.knowledgeAttribution
  skepticalContextDefeatedClosed : C.skepticalContextDefeated

def EpistemicContextClosed {S : SkepticalHypothesisPackage}
    {J : JustificationClosurePackage S} (C : EpistemicContextPackage J) : Prop :=
  C.contextSensitivity ∧ C.standardsVariability ∧
  C.knowledgeAttribution ∧ C.skepticalContextDefeated

theorem epistemic_context_closed_from_evidence {S : SkepticalHypothesisPackage}
    {J : JustificationClosurePackage S} (C : EpistemicContextPackage J)
    (E : EpistemicContextEvidence C) : EpistemicContextClosed C := by
  exact And.intro E.contextSensitivityClosed
    (And.intro E.standardsVariabilityClosed
      (And.intro E.knowledgeAttributionClosed E.skepticalContextDefeatedClosed))

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse
