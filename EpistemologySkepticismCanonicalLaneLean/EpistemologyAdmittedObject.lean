import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EpistemologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EpistemologyAdmittedObject where
  space : EpistemologySpace
  justified : Prop
  trueBelief : Prop
  skepticalHypothesis : Type
  skepticalTopology : TopologicalSpace skepticalHypothesis
  knowledgePossible : Prop
  conclusion : knowledgePossible

structure EpistemologyEndgameState where
  object : EpistemologyAdmittedObject

def EpistemologyWitnessClosed (O : EpistemologyAdmittedObject) : Prop :=
  O.knowledgePossible

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse