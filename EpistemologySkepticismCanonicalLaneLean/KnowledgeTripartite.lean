import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure KnowledgeTripartitePackage where
  justification : JustificationPackage
  belief : BeliefPackage
  truth : Prop
  justifiedTrueBelief : Prop
  defeatersAbsent : Prop

structure KnowledgeTripartiteEvidence (K : KnowledgeTripartitePackage) where
  justificationClosed : JustificationClosed K.justification
  beliefClosed : BeliefClosed K.belief
  truthClosed : K.truth
  justifiedTrueBeliefClosed : K.justifiedTrueBelief
  defeatersAbsentClosed : K.defeatersAbsent

def KnowledgeTripartiteClosed (K : KnowledgeTripartitePackage) : Prop :=
  JustificationClosed K.justification ∧ BeliefClosed K.belief ∧ K.truth ∧ K.justifiedTrueBelief ∧ K.defeatersAbsent

theorem knowledge_tripartite_closed_from_evidence (K : KnowledgeTripartitePackage) (E : KnowledgeTripartiteEvidence K) :
    KnowledgeTripartiteClosed K := by
  exact And.intro E.justificationClosed (And.intro E.beliefClosed (And.intro E.truthClosed (And.intro E.justifiedTrueBeliefClosed E.defeatersAbsentClosed)))

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse