import EpistemologySkepticismCanonicalLaneLean.SkepticalHypothesis

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure KnowledgeClosurePackage {S : SkepticalHypothesisPackage} where
  deductionClosure : Prop
  conjunctionClosure : Prop
  beliefConsistency : Prop
  evidenceTransmittance : Prop

structure KnowledgeClosureEvidence {S : SkepticalHypothesisPackage}
    (K : KnowledgeClosurePackage S) where
  deductionClosureClosed : K.deductionClosure
  conjunctionClosureClosed : K.conjunctionClosure
  beliefConsistencyClosed : K.beliefConsistency
  evidenceTransmittanceClosed : K.evidenceTransmittance

def KnowledgeClosureClosed {S : SkepticalHypothesisPackage}
    (K : KnowledgeClosurePackage S) : Prop :=
  K.deductionClosure ∧ K.conjunctionClosure ∧
  K.beliefConsistency ∧ K.evidenceTransmittance

theorem knowledge_closure_closed_from_evidence
    {S : SkepticalHypothesisPackage} (K : KnowledgeClosurePackage S)
    (E : KnowledgeClosureEvidence K) : KnowledgeClosureClosed K := by
  exact And.intro E.deductionClosureClosed
    (And.intro E.conjunctionClosureClosed
      (And.intro E.beliefConsistencyClosed E.evidenceTransmittanceClosed))

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse