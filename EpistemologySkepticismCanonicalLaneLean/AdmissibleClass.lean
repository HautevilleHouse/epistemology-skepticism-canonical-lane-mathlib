import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

structure EpistemicAdmittedObject where
  agent : Type
  beliefSystem : Type
  skepticalHypothesis : Prop
  knowledgeClaim : Prop
  conclusion : skepticalHypothesis ∨ knowledgeClaim

structure AdmissibleClass where
  object : EpistemicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.skepticalHypothesis ∨ A.object.knowledgeClaim) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse