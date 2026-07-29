import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure SkepticalScenarioPackage where
  scenario : Prop
  indistinguishableFromReality : Prop
  underminesKnowledge : Prop
  globalSkepticism : Prop
  localSkepticism : Prop

structure SkepticalScenarioEvidence (S : SkepticalScenarioPackage) where
  scenarioClosed : S.scenario
  indistinguishableFromRealityClosed : S.indistinguishableFromReality
  underminesKnowledgeClosed : S.underminesKnowledge
  globalSkepticismClosed : S.globalSkepticism
  localSkepticismClosed : S.localSkepticism

def SkepticalScenarioClosed (S : SkepticalScenarioPackage) : Prop :=
  S.scenario ∧ S.indistinguishableFromReality ∧ S.underminesKnowledge ∧ S.globalSkepticism ∧ S.localSkepticism

theorem skeptical_scenario_closed_from_evidence (S : SkepticalScenarioPackage) (E : SkepticalScenarioEvidence S) :
    SkepticalScenarioClosed S := by
  exact And.intro E.scenarioClosed (And.intro E.indistinguishableFromRealityClosed (And.intro E.underminesKnowledgeClosed (And.intro E.globalSkepticismClosed E.localSkepticismClosed)))

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse