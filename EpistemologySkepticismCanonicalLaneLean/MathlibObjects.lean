import EpistemologySkepticismCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologySkepticismCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure JustificationStructure where
  foundational : Prop
  coherentist : Prop
  infinitist : Prop
  foundationalTerm : foundational
  coherentistTerm : coherentist
  infinitistTerm : infinitist

structure EpistemicProjection : Projection EpistemicEndgameState where
  toFun := fun x => x
  idempotent := by intro x; rfl

theorem epistemic_projection_idempotent (x : EpistemicEndgameState) :
    EpistemicProjection.toFun (EpistemicProjection.toFun x) = EpistemicProjection.toFun x := by
  exact EpistemicProjection.idempotent x

end EpistemologySkepticismCanonicalLaneLean
end HautevilleHouse