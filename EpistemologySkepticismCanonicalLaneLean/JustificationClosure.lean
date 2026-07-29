import EpistemologySkepticismCanonicalLaneLean.SkepticalHypothesis

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure JustificationClosurePackage (S : SkepticalHypothesisPackage) where
  closureUnderKnownEntailment : Prop
  closureUnderDeduction : Prop
  closureUnderCompetentDeduction : Prop
  closureRestricted : Prop

structure JustificationClosureEvidence {S : SkepticalHypothesisPackage}
    (J : JustificationClosurePackage S) where
  closureUnderKnownEntailmentClosed : J.closureUnderKnownEntailment
  closureUnderDeductionClosed : J.closureUnderDeduction
  closureUnderCompetentDeductionClosed : J.closureUnderCompetentDeduction
  closureRestrictedClosed : J.closureRestricted

def JustificationClosureClosed {S : SkepticalHypothesisPackage}
    (J : JustificationClosurePackage S) : Prop :=
  J.closureUnderKnownEntailment ∧ J.closureUnderDeduction ∧
  J.closureUnderCompetentDeduction ∧ J.closureRestricted

theorem justification_closure_closed_from_evidence {S : SkepticalHypothesisPackage}
    (J : JustificationClosurePackage S) (E : JustificationClosureEvidence J) :
    JustificationClosureClosed J := by
  exact And.intro E.closureUnderKnownEntailmentClosed
    (And.intro E.closureUnderDeductionClosed
      (And.intro E.closureUnderCompetentDeductionClosed E.closureRestrictedClosed))

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse
