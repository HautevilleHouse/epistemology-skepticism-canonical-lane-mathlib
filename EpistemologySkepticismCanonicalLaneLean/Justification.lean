import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure JustificationPackage where
  belief : Prop
  evidence : Prop
  inferentialSupport : Prop
  coherence : Prop
  reliability : Prop

structure JustificationEvidence (J : JustificationPackage) where
  beliefClosed : J.belief
  evidenceClosed : J.evidence
  inferentialSupportClosed : J.inferentialSupport
  coherenceClosed : J.coherence
  reliabilityClosed : J.reliability

def JustificationClosed (J : JustificationPackage) : Prop :=
  J.belief ∧ J.evidence ∧ J.inferentialSupport ∧ J.coherence ∧ J.reliability

theorem justification_closed_from_evidence (J : JustificationPackage) (E : JustificationEvidence J) :
    JustificationClosed J := by
  exact And.intro E.beliefClosed (And.intro E.evidenceClosed (And.intro E.inferentialSupportClosed (And.intro E.coherenceClosed E.reliabilityClosed)))

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse