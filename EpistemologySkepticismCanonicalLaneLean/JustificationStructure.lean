import EpistemologySkepticismCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure JustificationPackage where
  foundationalBeliefs : Prop
  coherenceRelation : Prop
  infiniteRegressAvoided : Prop
  closureUnderDeduction : Prop

structure JustificationEvidence (J : JustificationPackage) where
  foundationalBeliefsClosed : J.foundationalBeliefs
  coherenceRelationClosed : J.coherenceRelation
  infiniteRegressAvoidedClosed : J.infiniteRegressAvoided
  closureUnderDeductionClosed : J.closureUnderDeduction

def JustificationClosed (J : JustificationPackage) : Prop :=
  J.foundationalBeliefs ∧ J.coherenceRelation ∧ J.infiniteRegressAvoided ∧ J.closureUnderDeduction

theorem justification_closed_from_evidence (J : JustificationPackage) (E : JustificationEvidence J) :
    JustificationClosed J := by
  exact And.intro E.foundationalBeliefsClosed (And.intro E.coherenceRelationClosed (And.intro E.infiniteRegressAvoidedClosed E.closureUnderDeductionClosed))

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse