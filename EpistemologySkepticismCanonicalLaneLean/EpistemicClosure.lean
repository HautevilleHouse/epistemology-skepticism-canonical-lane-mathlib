import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure EpistemicClosurePackage where
  knownPremise : Prop
  knownEntailment : Prop
  knownConclusion : Prop
  closureUnderModusPonens : Prop
  closureUnderKnownEntailment : Prop

structure EpistemicClosureEvidence (E : EpistemicClosurePackage) where
  knownPremiseClosed : E.knownPremise
  knownEntailmentClosed : E.knownEntailment
  knownConclusionClosed : E.knownConclusion
  closureUnderModusPonensClosed : E.closureUnderModusPonens
  closureUnderKnownEntailmentClosed : E.closureUnderKnownEntailment

def EpistemicClosureClosed (E : EpistemicClosurePackage) : Prop :=
  E.knownPremise ∧ E.knownEntailment ∧ E.knownConclusion ∧ E.closureUnderModusPonens ∧ E.closureUnderKnownEntailment

theorem epistemic_closure_closed_from_evidence (E : EpistemicClosurePackage) (Ev : EpistemicClosureEvidence E) :
    EpistemicClosureClosed E := by
  exact And.intro Ev.knownPremiseClosed (And.intro Ev.knownEntailmentClosed (And.intro Ev.knownConclusionClosed (And.intro Ev.closureUnderModusPonensClosed Ev.closureUnderKnownEntailmentClosed)))

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse