import EpistemologySkepticismCanonicalLaneLean.EpistemicContext

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure MooreProofPackage {S : SkepticalHypothesisPackage}
    {J : JustificationClosurePackage S} {C : EpistemicContextPackage J} where
  hereIsOneHand : Prop
  externalWorldKnowledge : Prop
  skepticalHypothesisUnassertable : Prop
  proofClosesSkepticism : Prop

structure MooreProofEvidence {S : SkepticalHypothesisPackage}
    {J : JustificationClosurePackage S} {C : EpistemicContextPackage J}
    (M : MooreProofPackage C) where
  hereIsOneHandClosed : M.hereIsOneHand
  externalWorldKnowledgeClosed : M.externalWorldKnowledge
  skepticalHypothesisUnassertableClosed : M.skepticalHypothesisUnassertable
  proofClosesSkepticismClosed : M.proofClosesSkepticism

def MooreProofClosed {S : SkepticalHypothesisPackage}
    {J : JustificationClosurePackage S} {C : EpistemicContextPackage J}
    (M : MooreProofPackage C) : Prop :=
  M.hereIsOneHand ∧ M.externalWorldKnowledge ∧
  M.skepticalHypothesisUnassertable ∧ M.proofClosesSkepticism

theorem moore_proof_closed_from_evidence {S : SkepticalHypothesisPackage}
    {J : JustificationClosurePackage S} {C : EpistemicContextPackage J}
    (M : MooreProofPackage C) (E : MooreProofEvidence M) : MooreProofClosed M := by
  exact And.intro E.hereIsOneHandClosed
    (And.intro E.externalWorldKnowledgeClosed
      (And.intro E.skepticalHypothesisUnassertableClosed E.proofClosesSkepticismClosed))

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse
