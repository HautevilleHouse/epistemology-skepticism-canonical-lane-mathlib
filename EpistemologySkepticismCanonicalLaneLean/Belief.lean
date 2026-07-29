import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure BeliefPackage where
  proposition : Prop
  doxasticAttitude : Prop
  convictionDegree : Prop
  consistency : Prop
  responsivenessToEvidence : Prop

structure BeliefEvidence (B : BeliefPackage) where
  propositionClosed : B.proposition
  doxasticAttitudeClosed : B.doxasticAttitude
  convictionDegreeClosed : B.convictionDegree
  consistencyClosed : B.consistency
  responsivenessToEvidenceClosed : B.responsivenessToEvidence

def BeliefClosed (B : BeliefPackage) : Prop :=
  B.proposition ∧ B.doxasticAttitude ∧ B.convictionDegree ∧ B.consistency ∧ B.responsivenessToEvidence

theorem belief_closed_from_evidence (B : BeliefPackage) (E : BeliefEvidence B) :
    BeliefClosed B := by
  exact And.intro E.propositionClosed (And.intro E.doxasticAttitudeClosed (And.intro E.convictionDegreeClosed (And.intro E.consistencyClosed E.responsivenessToEvidenceClosed)))

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse