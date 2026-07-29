import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure SkepticalScenarioPackage where
  scenarioType : Type u
  possibleWorlds : Type v
  evidenceRelation : Type w
  skepticalHypothesis : Prop
  underdetermination : Prop
  closureFailure : Prop

structure SkepticalScenarioEvidence (S : SkepticalScenarioPackage) where
  skepticalHypothesisClosed : S.skepticalHypothesis
  underdeterminationClosed : S.underdetermination
  closureFailureClosed : S.closureFailure

def SkepticalScenarioClosed (S : SkepticalScenarioPackage) : Prop :=
  S.skepticalHypothesis ∧ S.underdetermination ∧ S.closureFailure

theorem skeptical_scenario_closed_from_evidence (S : SkepticalScenarioPackage)
    (E : SkepticalScenarioEvidence S) : SkepticalScenarioClosed S := by
  exact And.intro E.skepticalHypothesisClosed
    (And.intro E.underdeterminationClosed E.closureFailureClosed)

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse